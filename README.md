# ELISA Automotive WG

> [!NOTE]
> The Automotive WG is starting a new chapter under a new lead.
>
> Current work is aligning around autonomous-vehicle Linux use cases while
> carrying forward useful material from earlier automotive work.

The ELISA Automotive Working Group identifies the conditions and prerequisites
needed to integrate Linux into safety-critical automotive systems. The group
develops shared use cases, requirements, architecture notes, and demonstration
material and provides input to ELISA safety architecture work and future
implementation projects.

This repository contains the group's agreed-upon and peer-reviewed material.

## Current focus areas include

* Linux safety requirements for autonomous-vehicle use cases
* Partitioning and mixed-criticality workloads
* Device and accelerator isolation
* Negative testing and fault injection
* Deterministic recovery

## Get Involved

Good starting points are simple:

* Join an Automotive WG meeting. Meetings are open, and anyone can take part.
* Use the ELISA calendar below for registration and join details.
* Join the mailing list and chat channel for discussion between meetings.
* Bring larger or directional work to a meeting, the mailing list, chat, or a GitHub issue.

| Purpose | Channel |
| --- | --- |
| Announcements and discussion | [Automotive WG mailing list](https://lists.elisa.tech/g/automotive) |
| Day-to-day chat | [ELISA chat server](https://chat.elisa.tech/), Automotive WG category |
| Repository work | [GitHub issues and pull requests](https://github.com/elisa-tech/wg-automotive/issues) |
| Meeting registration and join details | [ELISA calendar](https://elisa.tech/community/meetings/) |

## Contributing

ELISA working group contributions usually start in the working group
conversation, then move to GitHub when there is repository material to change.

Recommended flow:

1. Discuss larger or directional work with the Automotive WG.
2. Fork the repository and create a focused branch from the default branch.
3. Commit focused changes, sign off commits when required, and reference any related GitHub issue.
4. Open a pull request against `elisa-tech/wg-automotive`.
5. Iterate through review until the pull request is ready to merge.

A pull request is ready for merge discussion when review comments are resolved,
required checks pass, and two group members have approved the change.
Merge-ready pull requests are put on the next workgroup sync call agenda for
discussion. If consensus is found, a maintainer merges the pull request.

> [!IMPORTANT]
> Each push to a pull request branch updates the pull request automatically.
> Push only revisions that should become part of the pull request.

## Existing Material

The repository also contains cluster-display and telltale material from earlier
Automotive WG work, including warning-symbol analysis for vehicle instrument
clusters, typically discussed at ASIL B.

This material remains valuable baseline input and will be reviewed alongside the
current autonomous-vehicle work.
