# Scope
This document describes the assumptions and predefinitions of the ELISA Automotive workgroup cluster demo use case, and defines terms and identifiers to be used in the rest of the documents.

- [Scope](#scope)
  - [Description](#description)
  - [Assumptions](#assumptions)
  - [Hardware](#hardware)
  - [System Behaviour](#system-behaviour)
    - [Operational states](#operational-states)
    - [Block Diagram nominal function](#block-diagram-nominal-function)
    - [Block Diagram Including Safety Checking](#block-diagram-including-safety-checking)
    - [Do we need description of the architectural elements here already?](#do-we-need-description-of-the-architectural-elements-here-already)
  - [Safety Goals and Safe State](#safety-goals-and-safe-state)
    - [Safety Goal 1](#safety-goal-1)
    - [Safety Goal 2](#safety-goal-2)
    - [Safe State](#safe-state)
  - [Interfaces](#interfaces)
    - [Telltale request](#telltale-request)
    - [Watchdog petting](#watchdog-petting)
    - [Image out](#image-out)

## Description
In general, the Cluster Display shows the instruments behind the drivers wheel, including but not limited to speedometer, fuel level, Direction indicator, and telltales.
The display of telltales in particular is safety critical, since telltales are a vital part of the warning and degradation concept of various items in typical car designs.
## Assumptions
* We assume the Display displays image data fed into it with ASIL B integrity, i.e. we do not consider display monitoring of any sort, a backwards path from the Display etc.
* The HW video interface is kept variable in this design at this point.
* We assume the system is reliably supplied with energy.

## Hardware
In this use case, to the end of getting something running, no specific Hardware is considered. 
The demo runs on a X86-64 target within QEMU [todo: check] with an emulated HW watchdog [currently softdog, will be changed soon]

## System Behaviour
### Operational states
The system operates in three states
* Startup
  * No safety assertions
  * Image output suppressed
  * Transition to normale Operation once everything is in order
* Normal Operation
* [Potentially degraded operation with CPU generated plane]
* Safe state
  * Black screen
[todo] drawing, Transitions 
* Startup -> Normal Operation
* Startup -> Safe state
* Normal operation -> Safe state
* Safe State -> Startup (on Ignition change maybe?)

### Block Diagram nominal function
Nominal function absent of safety mechanisms
![system](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/Jochen-Kall/wg-automotive/master/Cluster_Display_Use_Case_v2/Item_Defintion/Block_diagram_nominal.puml)
### Block Diagram Including Safety Checking
Block diagram including safety mechanisms
![system](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/Jochen-Kall/wg-automotive/master/Cluster_Display_Use_Case_v2/Item_Defintion/Block_diagram_with_safety.puml)
### Do we need description of the architectural elements here already?

## Safety Goals and Safe State
No hara (hazard analysis and risc assessment) was performed for the system. Instead we assume the following safety goals as given:
### Safety Goal 1
<!-- While requested, the system shall display the driver warning within 200 ms or transition to the safe state within 200 ms. -->
While a safety relevant telltale is requested, the system shall display the telltale to human perception within within 200ms
* Info: The safe state of the system cluster display is the black screen.
* Info: "to human perception" means, the periods during which the system does not display the telltale are shorter, than what humans can discern (tbd ms)
* Info: A telltale is considered requested, as soon as telltale request message is received
* Info: The message delay between telltale requester and the system cluster display is out of scope and not considered in this safety concept
* Info: We assume, that the telltale requester sends a request message cyclically and E2E protected, on missing or corrupted messages the cluster display assumes all safety telltales to be requested. [todo] debate, debouncing?
### Safety Goal 2
<!--The system shall transition to the safe state within 100ms of the display showing an unrequested telltale for longer than 100 ms -->
tbd

### Safe State
The system wide Safe state is defined as display backlight switched off / black screen.

## Interfaces

### Telltale request
* The Telltale request is sent cyclically every 200 ms
* The Telltale request contains the information which telltales to show
* The Telltale request is E2E protected

### Watchdog petting
* For now we assume a windows watchdog that has to be triggered every x ms
* If necessary, we change the design to an intelligent watchdog, if we need more sophistication, such as control flow monitoring
* If the watchdog is not triggered, it resets the µP and switches off the backlight
  * This can be extended to a more realistic design where a not displayed telltale does not directly causes the safe state, but rather switches the system to using a backup image generated by the CPU instead of by the relatively error prone HW graphics pipeline.
  * We can extend this to a more realistic design including a reset counter in the µP as opportunity to look into persistent storage
### Image out
* The Image data is transferred through the HW Display Interface to the Display with a frequency of 60Hz
* We assume the protocol to have E2E protection, and the Display to react to faulty image data by going black (-> Safe state) 

















