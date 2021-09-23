# Define the purpose of analysis

## Goals

> What kinds of losses will the analysis aim to prevent? Will STPA be applied
only to traditional safety goals like preventing loss of human life or will it
be applied more broadly to security, privacy, performance, and other system
properties? What is the system to be analyzed and what is the system boundary?

## System boundary

### Definitions
> A system is a set of components that act together as a whole to achieve some
  common goal, objective, or end. A system may contain subsystems and may also be
  part of a larger system
> A system is an abstraction conceived by the analyst. A decision must be made
about what is included in the system and what the system boundary is. With
respect to engineering, the most useful way to define the system boundary for
analysis purposes is to include the parts of the system over which the system
designers have some control.

![Control Structure Diagram](system-context.dot.png)

### Questions

* What are the telltale requesters?
    - These would help us to characterise the possible vehicle-level hazards
* Is there an IVI running on the same SoC as the Cluster?
    - Is a Hypervisor involved in the system?
* Are there any other external controllers?

## Losses

### Definitions
> A loss involves something of value to stakeholders. Losses may include a loss
  of human life or human injury, property damage, environmental pollution, loss
  of mission, loss of reputation, loss or leak of sensitive information, or any
  other loss that is unacceptable to the stakeholders.

* L-1: Loss of life or injury to people
* L-2: Loss of or damage to vehicle  
* L-3: Loss of or damage to objects outside the vehicle

## System Level Hazards

### Definitions

> A hazard is a system state or set of conditions that, together with a
  particular set of worst-case environmental conditions, will lead to a loss.

* H-1: Driver is not warned about a system condition, leading to a collision or other harmful event
* H-2: Driver is distracted by a warning, leading to a collision or other harmful event
* H-3: Driver becomes desensitized to a warning because it is incorrectly repeated
* H-4: A display anomaly compromises the driver (e.g. flickering image triggers epileptic fit)

## System-level Constraints

* What system-level constraints are relevant for the Instrument Cluster?
    - e.g. "A warning symbol must be displayed to the driver when abnormal tyre
      pressure is detected"

### Definitions

> A system-level constraint specifies system conditions or behaviors that need
to be satisfied to prevent hazards (and ultimately prevent losses) 

### Examples

* H-1: Aircraft violate minimum separation standards [L-1, L-2, L-4, L-5]
    - SC-1: Aircraft must satisfy minimum separation standards from other
      aircraft and objects [H-1]
* H-2: Aircraft airframe integrity is lost [L-1, L-2, L-4, L-5]
    - SC-2: Aircraft airframe integrity must be maintained under worst-case
      conditions [H-2]
