# Scope
This document describes the assumptions and predefinitions of the ELISA Automtotive workgroup AGL cluster demo use case, and defines terms and identifiers to be used in the rest of the documents.

## Description
In general, the Cluster display shows the instruments behind the drivers wheel, including but not limited to speedometer, fuel level, Direction indicator, and telltales.
The display of telltales in particular is safety critical, since telltales are a vital part of the warning and degradation concept of various items in typical car designs.

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
tbd
### Safety Goal 2
<!--The system shall transition to the safe state within 100ms of the display showing an unrequested telltale for longer than 100 ms -->
tbd

### Safe State
The system wide Safe state is defined as display backlight switched off / black screen.

## Interfaces
We only describe the interfacese for the idealized version, the demo version does not have any after all.

### Telltale request
### Watchdog petting
### Image out

















