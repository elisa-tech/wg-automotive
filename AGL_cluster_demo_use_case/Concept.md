# Functional Safety Concept
# Assumptions
* Determination of Safety status, i.e. the decision whether safet state has to be requested or not, is assumed to be a deterministic function of the Safety relevant inputs.
* The underlying hardware is free of faults.   
# HSR_1
While <warning condition is fulfilled> the System shall display the driver warning within 200 ms or transition to the safe state <Display black> within 200 ms.
Information: “while <warning condition is fulfilled>” means that, if the telltale request persists/is repeated, the system has to continue to display the telltale.
## HLSR_1 ASIL B
* [ASIL B] The Telltale requester shall send a request cyclically detailing whether a telltale is needed to be shown or not.
* [ASIL B] The communication between telltale requester and cluster controller shall be E2E protected against data corruption and message loss.
* [ASIL B] The Instrument cluster shall display the requested telltale within the timing constraints or transition to the safe state.
  * [QM] The QT app shall display the requested telltale within the timing constraints
  * Safety-signal source part of the control flow
    * [ASIL B] The safety-signal-source shall determine, whether the requested telltale is shown
      * comment: this is kept vague on purpose, to allow this design to cover Variants with a HW checker as well as Imaging based or other solutions and keep this design applicable to other use cases.
      * [ASIL B] All inputs to the safety-signal-source shall be E2E protected
      * [ASIL B] On E2E miss of any input to Safety-signal-source, Safety-signal-source shall request "Safe state"
      * [ASIL B] If the requested telltale is not shown, the Safety-signal-source shall request "Safe state"
    * [ASIL B] The safety-signal source shall cyclically send the safety status message to the safety app
    * [ASIL B] Communication between Safety signal source and Safety App shall be E2E protected
    * [ASIL B] The Kernel shall ensure spatial freedom from interference between the Safety signal source and the rest of the system
      * comment: This means that if the workload gets executed, the resulting state deterministically depends on the inputs the inputs independent of the remainder of the system.
      * comment: Hardware faults are out of scope, see assumptions
      * comment: Temporal interference is fine 
  * Safety App portion of the Control Flow
    * [ASIL B] The Safety App shall check the Communication from Safety Signal Source for E2E misses
    * [ASIL B] The Safety App shall pet the external watchdog, if and only if the cyclic message passes the E2E check and does not request "safe state"
  * Watchdog Part of the Control flow
    * [ASIL B] The Watchdog shall kill the backlight of the Cluster display, if it is not triggered.
* [ASIL B] The chain between Telltale request sent and display/safe state shall be less than 200ms.