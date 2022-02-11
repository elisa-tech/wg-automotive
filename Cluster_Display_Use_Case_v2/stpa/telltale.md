# Losses

## L-1

Loss of life

## L-2

Loss of or damage to vehicle

## L-3

Loss of or damage to objects outside the vehicle


# Hazards

## H-1

Driver is not informed about a system condition, leading to a collision or other harmful event


Possible losses: [L-1](#l-1), [L-2](#l-2), [L-3](#l-3)

## H-2

Driver is distracted by the display, leading to a collision or other harmful event


Possible losses: [L-1](#l-1), [L-2](#l-2), [L-3](#l-3)

## H-3

Driver becomes desensitized to a warning because it is incorrectly repeated, leading to a collision or other harmful event


Possible losses: [L-1](#l-1), [L-2](#l-2), [L-3](#l-3)

## H-4

Content on display compromises the driver (e.g. flickering image triggers epileptic fit), leading to a collision or other harmful event


Possible losses: [L-1](#l-1), [L-2](#l-2), [L-3](#l-3)


# System Constraints

| Constraint | Description |
| ---- | ---- |
| C-1 | Warning of a potentially harmful system condition must be visible and noticeable by the driver [H-1]  |
| C-2 | Display content must not impede the driver in performing the driving task  |
| C-3 | Erroneous, ambiguous or contradictory information relating to potentially harmful system conditions must not be persistently displayed  |

# Component responsibilities

| ID | Component | Constraints | Description |
| ---- | ---- | ---- | ---- |

# RB

Return Buffer

## Unsafe Control Action Summary

| Control Action | Providing | Not Providing | Timing | Duration |
| ---- | ---- | ---- | ---- | ---- |

## Feedback

### RB-FB-Image-Data

Image Data from Readback Interface

**Target:** [TC](#tc)

# RH

Request Handler

## Unsafe Control Action Summary

| Control Action | Providing | Not Providing | Timing | Duration |
| ---- | ---- | ---- | ---- | ---- |
| [RH-Set](#rh-set) |  | [RH-UCA-01](#rh-uca-01) |  |  |

## Control Actions

### RH-Set

Set Required Telltales

**Target:** [TC](#tc)

#### Unsafe Control Actions

##### RH-UCA-01

Request Manager does not provide Set Required Telltales when a telltale has been activated 

**Reason:** Not Providing

**Possible Hazards:** [H-1](#h-1)

# RI

Readback Interface

## Unsafe Control Action Summary

| Control Action | Providing | Not Providing | Timing | Duration |
| ---- | ---- | ---- | ---- | ---- |

## Feedback

### RI-FB-Displayed-Image

Image Data from Display

**Target:** [RB](#rb)

# TC

Telltale Checking

## Unsafe Control Action Summary

| Control Action | Providing | Not Providing | Timing | Duration |
| ---- | ---- | ---- | ---- | ---- |
| [TC-Pet](#tc-pet) | [TC-UCA-03](#tc-uca-03) |  |  |  |
| [TC-Read](#tc-read) | [TC-UCA-01](#tc-uca-01) |  | [TC-UCA-02](#tc-uca-02) |  |
| [TC-Response](#tc-response) | [TC-UCA-04](#tc-uca-04) |  |  |  |

## Control Actions

### TC-Pet

Pet watchdog

**Target:** [WD](#wd)

#### Unsafe Control Actions

##### TC-UCA-03

Telltale Checking provides Pet when when one or more required Telltales are not correctly displayed 

**Reason:** Providing

**Possible Hazards:** [H-1](#h-1)

### TC-Read

Read image data from buffer

**Target:** [RB](#rb)

#### Unsafe Control Actions

##### TC-UCA-01

Telltale Checking provides Read when incorrect image data relating to Required Telltales is stored by Return Buffer 

**Reason:** Providing

**Possible Hazards:** [H-1](#h-1)

##### TC-UCA-02

Telltale Checking provides Read when image data relating to Required Telltales has been not updated to reflect the current display 

**Reason:** Timing

**Possible Hazards:** [H-1](#h-1)

### TC-Response

Respond to challenge from Watchdog

**Target:** [WD](#wd)

#### Unsafe Control Actions

##### TC-UCA-04

Telltale Checking provides Response when when one or more required Telltales are not correctly displayed 

**Reason:** Providing

**Possible Hazards:** [H-1](#h-1)

# WD

Watchdog

## Unsafe Control Action Summary

| Control Action | Providing | Not Providing | Timing | Duration |
| ---- | ---- | ---- | ---- | ---- |

## Feedback

### WD-FB-Challenge

Challenge to ensure Telltale Checking is still functioning

**Target:** [TC](#tc)

