# Autosar Requirements to OS - Analysis and Feedback
The Automotive WG considers Requirements the Autosar consortion poses on the underlying Operating system.
## Findings
The following points came up so far:
### General question regarding the OS flag
How is the OS flag to be understood? We understood it as requirements that do require something from the OS to be fulfilled, but if that interpretation is correct, then some requirements miss the flag, i.e. [RS_SAF_10037]
Followup question, some requirements with the OS flag do not have any children that carry the flag as well, i.e. [RS_SAF_10030] or [RS_SAF_10005], [RS_SAF_10002]
### AUTOSAR_RS_Safety.pdf
####   RS_SAF_00001, RS_SAF_21202
Full time and data determinism is needed on system level, but not necessarily on OS level. We should discuss to what exactly the OS needs to provide to make fulfillment of these requirements possible.
### [RS_SAF_10028]
The requirements and its children, is the interpretation correct, that fully deterministic execution is ensured by execution management without OS involvement, as long as sufficient computing ressources are availlable? We need to discuss the ressources requirement, this argument is not that easy for a preemptive OS
#### [RS_SAF_21202] 
    Execution Management shall support fully deterministic
	execution (time determinism and data determinism) so that higher ASIL levels
	can be achieved even when using parallel processing.

Additional Excerpt from AUTOSAR_EXP_PlatformDesign.pdf:

    Deterministic execution provides a mechanism such that a calculation using a given
    input data set always produces a consistent output within a bounded time. Execution Management distinguishes between time and data determinism. The former states that the output is always produced by the deadline whereas the latter refers to generating the same output from the same input data set and internal state.
    The support provided by Execution Management focuses on data determinism as it assumes time determinism has handled by the provision of sufficient resources.

This looks very much like static RT µc thinking, time slices and sufficient ressources to finish the task in time.
With a preemtive OS like Linux this can not be guaranteed by design of the OS
We should debate adapting the requirements to better fit a preemptive OS, Execution management in tandem with external watchdogs could ensure a temporal upper bound or drive a safe state.
Just because one can construct a corner case that delays execution on a a Linux based system indefinitely, does not mean it happens a lot. 

#### [RS_SAF_10037]
    The requirement should be flagged as OS related, see children requirements referring to OS measures
    When taken out of context of it's parent requirement, the requirement looks more encompassing than it actually is.

### AUTOSAR_RS_OperatingSystemInterface.pdf
No issues found, Requirements described in the document can in principle be fulfilled by a Linux kernel 
### Autosar_SWS_Operating_Interface.pdf
####   SWS_OSI_02000
Where does the number of ressource groups (8) come from?
###	[SWS_OSI_01014] 
Multi-Process Creation Capability Restriction :  seccomp functionality can do the job
###	[SWS_OSI_02001] Memory ResourceGroups 
we can use cgroups or setrlimit, example cgroups:
```
    memory.memsw.limit_in_bytes
	memory.limit_in_bytes
```
#### [SWS_OSI_02002] CPU ResourceGroups
Can be done using cgroups :
```
	cpu.cfs_period_us
	cpu.cfs_quota_us
```
 
