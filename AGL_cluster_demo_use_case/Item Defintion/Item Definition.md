# Scope
This document describes the assumptions and predefinitions of the ELISA Automtotive workgroup AGL cluster demo use case, and defines terms and identifiers to be used in the rest of the documents.

This Use case serves several purposes
* Proof of concept of a Safety critical system with non trivial Linux involvement for an automotive use case
* Producing a basis for analysis in the Architecture Workgroup
* Pioneering OSS tooling and collaboration processes for safety work
* Creating an demo application within AGL
* Producing reuseable safety concept building blocks for a generic design pattern

What this use case is not
* Complete 
* entirely realistic
  * The safety goals are formulated too strictly, leaving no room for debouncing for instance
  * Simplification of the fault handling, a real cluster display would have a degraded mode of operation with simplified graphics  instead of shutting off the backlight directly 
* directly useable for a real safety project

## Description
In general, the Cluster display shows the instruments behind the drivers wheel, including but not limited to speedometer, fuel level, Direction indicator, and telltales.
The display of telltales in particular is safety critical, since telltales are a vital part of the warning and degradation concept of various items in typical car designs.

## Hardware
In this use case, to the end of getting something running, no specific Hardware is considered. 
The demo runs on a X86-64 target within QEMU [todo: check] with an emulated HW watchdog [currently softdog, will be changed soon]

## Block Diagram
The idealized version we base our concept work on, thus is not fully reflected in the implementation of our demo.
Our concept work uses the following block diagram
[todo add Block_diagram.puml]
whereas the part implemented (to some extend) in the demo is
[todo add Block_diagram_demo.puml]

## Interfaces
We only describe the interfacese for the idealized version, the demo version does not have any after all.

### Telltale request
### Watchdog petting
### Image data forward path
### Image data backward path
















