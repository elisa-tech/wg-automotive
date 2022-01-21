# Cluster Display Use Case - STPA results

This folder contains the results of applying STPA for the Telltale function of
the Cluster Display use case.

The analysis is divided into the following sections, based on the stages in the
[STPA Handbook](https://psas.scripts.mit.edu/home/get_file.php?name=STPA_handbook.pdf)

* [Define the purpose of analysis](purpose.md)
* [Model the control structure](structure.md)

## Notes

Control structure diagrams are created using Graphviz; bothe the source files
(*.dot) and the rendered PNGs are stored in git.

To render a PNG version of a diagram, you will need to do the following:

1) Install [Graphviz](https://graphviz.gitlab.io/download/)

2) Run the following command:
```
    dot -Tpng -O INPUT_FILENAME
```
where INPUT_FILENAME is the diagram file (e.g. cluster-control-structure.dot).

Note that the -O option automatically generates an output filename by appending
.png to the input filename. Use -o*OUTPUT_FILENAME* to specify a different
output filename.

To output in SVG use -Tsvg instead of -Tpng.
