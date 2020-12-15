# System definition
The item telltale handles displaying safety relevant warning signs called "telltales" to the driver on the instrument cluster display, in case requested by other systems of the car.

The requesting system is modelled as a generic controller connected via a bus i.e. CAN.

Further inputs (involved systems) are the ignition and the battery. While the ignition is off, the display remains black.

The connection to the Battery is necessary to safely deal with low charge levels that could cause erratic display function.

Cyclic communication will be necessary, otherwise switch on/off commands can be missed.

## Inputs
1. Telltale request
1. Battery state
1. Ignition state

## Outputs
None?

## Safe States
The safe state of the system is defined by the screen switched off/black. The system is allowed to transition out of the safe state, after Ignition change.

_[Further point to discuss, could also be allowed to recover if certain underlying transient faults are no more, i.e. corrupted communication between requester and cluster controller]_

## Schematic
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.wcfczcs05qi2)

## Assumptions
It is assumed that the HW of the cluster controller has to be systematically capable in the sense that it either performs correctly or switches itself off, which results in the display not receiving image data and the kill line being pulled down. This implies existence of a window watchdog to ensure there is no temporal misbehaviour.
 
Besides the safety relevant telltale functionality, unrelated QM software runs on the cluster controller.

It is assumed that the High level Safety requirements have ASIL B assigned, since that is the integrity level, typically required for instrument clusters in commercial vehicles.

## High level Safety requirements 
### HLSR_1 ASIL B
While the ignition is on and while <warning condition is fulfilled> the System shall display the driver warning within 200 ms or transition to the safe state <Display black> within 200 ms.

Information: “while <warning condition is fulfilled>” means that, if the telltale request persists/is repeated, the system has to continue to display the telltale.

Need to discuss if Ignition=on is necessary here, if the system is probably not running in the first place while IG=off.

Information: In Haraki-sans design, the condition is not safety relevant, we leave it in for now, but general consensus is that it is probably not necessary.

### HLSR_2 ASIL B
The system shall transition into the safe state within 100ms, if an unmotivated telltale is shown.

Information: The timing is derived from the temporal resolution of the human eye, flickering shorter than 100ms is not perceived.

### HLSR_3 ASIL B
The system shall inform the telltale requester of the status of the telltale (displayed/safe state).

Information: We cover this requirement mainly to broaden the solution space of projects.


# Functional Safety Concept
## HLSR_1 ASIL B
* [ASIL B] The Telltale requester shall send a request cyclically detailing whether a telltale is needed to be shown or not.
* [ASIL B] The communication between telltale requester and cluster controller shall be E2E protected against data corruption and message loss.
* [ASIL B] The Instrument cluster displays the requested telltale within the timing constraints or transitions to the safe state.
* [ASIL B] The instrument cluster transitions to the safe state if communication is missing, corrupted, or out of order.
* [ASIL B] The chain between Telltale request sent and display/safe state shall be less than 200ms.

## HLSR_2 ASIL B
* [ASIL B] The Instrument cluster shall monitor the display and detect display of unrequested tell tales.
* [ASIL B] The instrument cluster shall transition to the safe state within 100ms of showing an unrequested tell tale.

## HLSR_3 ASIL B
* [ASIL B] The cluster controller shall send a status message to the telltale requester (displayed/safe state).
* [ASIL B] The chain between telltale request sent and status message received back shall be less than **x ms**.


# Technical Safety Concept **_[DRAFT]_**
At this point we have to decide how the system shall be designed between Cluster controller and display.

Mainly two variants exist:
1. A safety display that displays is present with the required integrity, diagnoses itself and transitions to black on its own if it diagnoses an internal problem or if the image stream is compromised or not available. 
1. QM Display with a readback path to the Controller is present, and a switch off line allowing the controller to diagnose the Display and transition to the safe state by pulling down the switch off line (e.g. killing the power supply of the backlight), if the requested telltale is not shown within the time threshold).

Below a draft of more likely scenario 2.) is illustrated

## Schematic
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.aff2dnyejgrd)

## HLSR_1
* [ASIL B] The <Telltale requester> shall send the telltale request containing the information to show or not every 100 ms.
* [ASIL B] The Ignition shall send the Ignition status every 100ms.
* [ASIL B] The Battery shall send the battery status every 100ms.
* [ASIL B] The communication between <Telltale requester> /Ignition / Battery shall be E2E protected (CRC and message counter).
* [ASIL B] If the Cluster controller does not receive a new telltale request after 100 ms, it shall transition to the safe state by pulling down the kill pin.
* [ASIL B] The Instrument cluster shall check CRC and message counter of incoming messages.
* [ASIL B] If the Cluster controller receives the telltale request too late, corrupted or out of order/ skipped message counter, it shall transition to the safe state by pulling down the kill pin.
* [ASIL B] If the Ignition is off, the Cluster controller shall transition to the safe state by pulling down the kill pin.
* [ASIL B] If the battery charge level is below <Threshold>, the Cluster controller shall transition to the safe state by pulling down the kill pin.
* [ASIL B] The Cluster controller shall embed the telltale into the display stream every 100 ms.
* [QM] The Display shall show the display stream content.
* [QM] The Display shall provide back the image displayed to the Cluster controller within a maximal delay of x ms
* [ASIL B] The Cluster Controller shall transition the System into safe state within x ms by pulling down the kill pin, if the read back image data comes too late or does not coincide with the requested telltale.
* [ASIL B] The Cluster Controller shall pull down the kill pin, in case of an internal fault (-> see assumption).
* [ASIL B] The watchdog shall pull down the kill pin forcing the Display to black, if the Cluster controller fails to trigger it in time.
** Details not relevant here, this just makes sure the typical clock related failure modes that can’t be diagnosed within the controller are covered.

### Conclusions
* With that Design, the immediate focus would lie on correctness of execution and spatial freedom from interference between the safety functionality and the rest.
* Temporal misbehaviour which can’t be ruled out in a modern platform as well as temporal interference is covered by the watchdog and does not have to be addressed.
* Incorrect execution needs to be addressed.
* Spatial freedom from interference needs to be addressed i.e. making sure non safety or different safety functionality does not impede correctness of execution in the safety functionality.

## HLSR_2
_[to be addressed]_

## HLSR_3
_[to be addressed]_


# Technical Safety Concept based on Haraki-sans design
Concept draft based on presentation from Haraki-sans slides on the AGL cluster architecture.

## Schematic
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.s9l1u8ej5yf4)

## HLSR_1 [ASIL B]
### Normal Operation
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.wueqcivtw8fx)

* [ASIL B] The <Telltale requester> shall send the telltale request containing the information to show or not every 100 ms.
* [ASIL B] The Ignition shall send the Ignition status every 100ms.
* [ASIL B] The Battery shall send the battery status every 100ms.
* [QM] The Cluster controller shall provide the telltale request status to the Image generator every **x ms**.
* [QM] The Image generator shall embed the requested telltales into the the Image.
* [ASIL B] The Image generator shall send back the Image CRC to the Cluster Controller.
* [Assumption] The CRC is taken at the very end of the Image pipeline, or the Image generator functionality after the CRC is taken is of the required Safety Integrity (ASIL B) .
* [ASIL B] The Image generator shall send the Image to be displayed to the Display IC.
* [ASIL B] While the Display IC does not receive a degradation command, it shall pass through the Image data from the Image generator to the TFT.


### Diagnostics Image generator
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.4wr6wqtrkx5r)

* [ASIL B] The Cluster Controller shall check the Telltale CRC from the Image generator against the expected CRC according to the telltale request.
* [ASIL B] If the Telltale CRC from the Image generator is not as expected, the Cluster controller shall pass on the Telltale information to the Display IC and command degradation.
* [ASIL B] While the Display IC receives a degradation command, it shall ignore the output of the Image generator and generate the Image itself instead.

### Diagnostics TFT
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.p1p5z8rqlfdz)

* [QM] The TFT shall provide self diagnostics results to the Display IC.
* [QM] The TFT shall provide the image shown to the Display IC.
* [ASIL B] The Display IC shall monitor the Image shown by the TFT against the Image it sent.
* [ASIL B] The Display IC shall send a safe state request to the cluster controller if Image requested and Image sent does not match, or any TFT fault is detected.
* [ASIL B] The Cluster controller shall pull down the Backlight kill line, if the Display controller requests transition to the safe state.

### Diagnostics Communication
[add diagram from google doc](https://docs.google.com/document/d/1GQ9FwFEJz9hLjhK_xTEi2DVBmgU2DBnX/edit#heading=h.clkblt4ymneq)

* [ASIL B] The communication between <Telltale requester> /Ignition / Battery shall be E2E protected (CRC and message counter).
* [ASIL B] If the Cluster controller does not receive a new telltale request after 100 ms, it shall transition to the safe state by pulling down the Backlight kill pin.
* [ASIL B] The Instrument cluster shall check CRC and message counter of incoming messages.
* [ASIL B] If the Cluster controller receives the telltale request too late, corrupted or out of order/ skipped message counter, it shall transition to the safe state by pulling down the Backlight kill pin.


### Temporal protection
Since we have a temporal aspect in the high level safety requirements, a window watchdog is required to protect against malfunctioning of the clock/frequency generator of the controller. 

* [ASIL B] The watchdog shall pull down the kill pin forcing the Display to black, if the Cluster controller fails to trigger it in time.
** Details not relevant here, this just makes sure the typical clock related failure modes that can’t be diagnosed within the controller are covered.

## HLSR_2 [ASIL B]
HLSR_2 is mostly covered by the HSLR_1 concept. Once telltales have been requested from the image generator, showing not requested telltales is covered by the HSLR_1 concept. Additional requirement therefore:

* [ASIL B] The cluster controller shall only request a telltale insertion from the image generator, if it receives a valid telltale request for that telltale.

## HLSR_3 [ASIL B]
_[to be addressed]_
