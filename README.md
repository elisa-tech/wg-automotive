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

The true sourcecode repository:

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

## Contribution workflow
To make collaboration as frictionless as possible, the automotive workgroup uses the following github based workflow.
* Fork elisa-tech/wg-automotive within github
* Create a feature branch based on "master" to work on
* [todo][optional for non-code repositories] create an issue on github describing what you work on, refer to issue in commits
* Getting your work back into the main repository
  * Fast forward the master branch of your fork to the master of the original repository (Can be done with one click from within the github browser Interface)
    * Pull the changed master branch into your local copy [todo] needs explanation, unclear for git newbies
    * Rebase your feature branch on "master"
  * Make sure all your commits are signed off 
    * If they are not, github will notify you of failed DCO checks and provide instructions how to sign off afterwards, does not always get it right though.
    * It's best to sign your commits directly by using the --signoff flag when using command line git, or the according setting of your GIT Gui
    * Add reference to issue, if one exists [todo pretty up]
    * Quality check your commits, spell checking etc [todo]
  * Push your feature branch to your fork on github
  * Create a cross fork pull request from your feature branch to elisa-tech/wg-automotive:master
  * Important! Do not continue to push revisions to the feature branch, unless you want the changes to become part of the pull request, the moment you push revisions to github, the pull request will be amended automatically!  
* The pull request is visible and open for comments and discussion
* You might be asked to rebase your feature branch again, this can become necessary if a pull request is merged in the meantime that has conflicting changes with your feature branch. 
* After review and confirmation in the sync call, the pull request will be merged by one of the maintainers
  * [todo] review needs to be fleshed out, possibility to add reviewers by name in Github

[todo] add examples and git code snippets for the individual steps for people new to git, keeping it tidy to read for veterans
[todo] add installation and setup instructions for git
[todo] refer to some git guis, tortoise, gitkraken etc

