# Scope
This document describes the assumptions and predefinitions of the ELISA Automtotive workgroup AGL cluster demo use case, and defines terms and identifiers to be used in the rest of the documents.

## Description
In general, the Cluster display shows the instruments behind the drivers wheel, including but not limited to speedometer, fuel level, Direction indicator, and telltales.
The display of telltales in particular is safety critical, since telltales are a vital part of the warning and degradation concept of various items in typical car designs.
## Assumptions
* We assume the Display displays image data fed into it with ASIL B integrity, i.e. we do not need to consider display monitoring of any sort, a backwards path from the Display etc.
* The HW video interface is kept variable in this design at this point.

## Hardware
In this use case, to the end of getting something running, no specific Hardware is considered. 
The demo runs on a X86-64 target within QEMU [todo: check] with an emulated HW watchdog [currently softdog, will be changed soon]

## System Behaviour
### Block Diagram nominal function
Nominal function absent of safety mechanisms
![system](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/Jochen-Kall/wg-automotive/master/Cluster_Display_Use_Case_v2/Item_Defintion/Block_diagram_nominal.puml)
### Block Diagram Including Safety Checking
Block diagram including safety mechanisms
![system](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/Jochen-Kall/wg-automotive/master/Cluster_Display_Use_Case_v2/Item_Defintion/Block_diagram_with_safety.puml)

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
The Telltale request is sent cyclically every 200 ms
The Telltale request contains the information which telltales to show
The Telltale request is E2E protected

### Watchdog petting
### Image out

















