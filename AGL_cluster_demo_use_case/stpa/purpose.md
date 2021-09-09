# Define the purpose of analysis

## Goals

> What kinds of losses will the analysis aim to prevent? Will STPA be applied
only to traditional safety goals like preventing loss of human life or will it
be applied more broadly to security, privacy, performance, and other system
properties? What is the system to be analyzed and what is the system boundary?

## Losses

### Definitions
> A loss involves something of value to stakeholders. Losses may include a loss
  of human life or human injury, property damage, environmental pollution, loss
  of mission, loss of reputation, loss or leak of sensitive information, or any
  other loss that is unacceptable to the stakeholders.

### Examples

* L-1: Loss of life or injury to people
* L-2: Loss of or damage to vehicle  
* L-3: Loss of or damage to objects outside the vehicle
* L-4: Loss of mission (e.g. failing to reach destination)
* L-5: Loss of customer satisfaction

### Questions

* What losses are relevant for the Instrument Cluster?

## System Level Hazards

### Definitions

> A hazard is a system state or set of conditions that, together with a
  particular set of worst-case environmental conditions, will lead to a loss.

> A system is a set of components that act together as a whole to achieve some
  common goal, objective, or end. A system may contain subsystems and may also be
  part of a larger system

### Examples

* H-1: Aircraft violate minimum separation standards in flight [L-1, L-2, L-4, L-5]
* H-2: Aircraft airframe integrity is lost [L-1, L-2, L-4, L-5]

### Questions

* What hazards are relevant for the Instrument Cluster?
    - e.g. "Warning symbol is not visible to driver leading to collision [L-1, L-2]"

## System-level Constraints

* What system-level constraints are relevant for the Instrument Cluster?
    - e.g. "A warning symbol must be displayed to the driver when abnormal tyre
      pressure is detected"

### Definitions

### Examples

* H-1: Aircraft violate minimum separation standards [L-1, L-2, L-4, L-5]
    - SC-1: Aircraft must satisfy minimum separation standards from other
      aircraft and objects [H-1]
* H-2: Aircraft airframe integrity is lost [L-1, L-2, L-4, L-5]
    - SC-2: Aircraft airframe integrity must be maintained under worst-case
      conditions [H-2]
