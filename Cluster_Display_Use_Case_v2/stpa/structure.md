# Model the control structure

## Control Structure

![Control Structure diagram for Cluster](cluster-control-structure.dot.png)

## Notes

Key
* Grey boxes are controllers that are external to the system (SoC)
  - Provide context for input/output across system boundary
* Blue boxes represent controllers that manage data
  - These act as 'gateways' between cooperating control hierarchies
* Black arrows represent control actions
* Red dashed arrows represent feedback

Cluster App
- Receives vehicle state information (via the CAN bus?)
- Updates the display state of vehicle state indicators in teh Object Model
- Configures the Display Controller

Rendering (Qt)
- Qt framework components are responsible for managing display rendering
- Renders the display to image buffer(s) based on the Object Model
- Updates image buffer(s) in the Framebuffer
- Provides image buffer address to Display Controller (via kernel)

Framebuffer and Display controller
- Hardware / firmware components in SoC
- Composes image and renders it on the display

Request Handler
- Receives cyclical messages from various Telltale requesters (E2E protected)
- Missing or corrupted request messages are assumed to request the Telltale in
  question
  - Underlying Assumption: Telltales are always designed to be safety relevant
    in the "activation direction" (if in doubt, show the telltale)
- Arbitrates Telltale requests by logical "or" (in case the same Telltale can be
  requested by several requesters).
- Sets the corresponding Telltale-related Rendering States in the Object Model
  (once per cycle)
- Triggers Telltale checking for the arbitrated Set of active Telltales (once
  per cycle)

Telltale Checking
- Manages a list of requested telltales (activation status)
- Periodically checks the Displayed image against the set of requested Telltales
- If one or more requested Telltales are not present, or an unrequested Telltale
  is present in the displayed Image, Telltale checking does not pet the watchdog
- Otherwise, pets the Watchdog
- Responds to periodic challenges from the Watchdog

Display
- Provides rendered image data to Telltale checking via Readbackinterface and
  Returnbuffer
    - How does the kernel facilitate this?

Watchdog
- Sends periodic challenge to Telltale checking
  - If correct response is not received, turns off backlight
- Manages a timer
  - Resets the timer when a Pet message is received
  - If the timer expires, turns off backlight

## Questions

- Why does the Request Handler communicate with the Telltale Checking by IPC?
- Does telltale requester need to know the vehicle state in order to detect a
  hazardous condition?
- Does the Vehicle set the state or do the Cluster App and the Telltale
  Requester get it?
