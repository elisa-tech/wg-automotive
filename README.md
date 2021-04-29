# ELISA Automotive WG - Navigation and file locations
## Mailing list, Calendar etc
https://lists.elisa.tech/g/automotive
## Meeting Minutes
https://docs.google.com/document/d/1qgEkB6HBjq0ojoTSmI_E18BZco3lORK1ZZDrBH1YQo0/edit#heading=h.b7qah2h40uzb
## Google drive workgroup folder
https://drive.google.com/drive/folders/1FCEzywCMfk3wY6lxBoMYjfQ_DQ44S5YS
## Repo Orientation regarding the Telltale Usecase
### Original considerations of the Use Case can be found in the folder 
Initialy_discussed_system_scope
### The First iteration of the use case that the meta-elisa demo is based on can be found in
AGL_cluster_demo_use_case
* Item definition
* Safety Concept/Requirements
Our Implementation on top of the AGL Cluster demo is split in two repositories:

The meta layer: (also includes build and running instructions)

https://github.com/elisa-tech/meta-elisa

The actual sourcecode repository:

https://github.com/elisa-tech/wg-automotive-safety-app

### The second iteration of the use case including Eclipse Papyrus based SysML models can be found in
Cluster_Display_Use_Case_v2
* Item definition [WIP]
* SysML models [WIP]

The models are also visible via github page deployment as online viewer at:

https://elisa-tech.github.io/wg-automotive/

The html export might not always be up to date with the models, generation is not automated (yet)
## Tooling
### Requirements
Requirements are stored and handled as Freeplane Mindmap with Functional Safety Addon
* https://www.freeplane.org/wiki/index.php/Home
* https://github.com/Jochen-Kall/Safety_concept_tool
### SysML modeling
SysML models are done with Eclipse Papyrus with SysML v1.6 Plugin
* https://www.eclipse.org/papyrus/
* https://marketplace.eclipse.org/content/papyrus-sysml-16