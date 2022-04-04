# Cluster Display Use Case - STPA results

This folder contains the results of applying STPA for the Telltale function of
the Cluster Display use case.

The analysis is divided into the following sections, based on the stages in the
[STPA Handbook](https://psas.scripts.mit.edu/home/get_file.php?name=STPA_handbook.pdf)

* [Define the purpose of analysis](purpose.md)
* [Model the control structure](structure.md)
* [Identify unsafe control actions](ucas.md)
* Identify loss scenarios

The results of the STPA are recorded in YAML in [telltale.yml](telltale.yml);
a formatted [markdown version](telltale.md) of the results is rendered using
[stpatools](https://gitlab.com/CodethinkLabs/stpatools) (see below).

## Notes

### Diagrams

Control structure diagrams are created using Graphviz; both the source files
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

### STPA results

STPA results are recorded in `telltale.yml` using the format described in
[stpatools](https://gitlab.com/CodethinkLabs/stpatools/-/blob/main/doc/FORMAT.md).

1) Install [yammlint](https://yamllint.readthedocs.io/en/stable/)

2) Install stpatools, use pip3:
```
  pip3 install git+https://gitlab.com/CodethinkLabs/stpatools
```

3) To validate the results, use the following commands:
```
  yamllint -d relaxed telltale.yml
  stpa-validate telltale.yml
```

4) To render in markdown, use the following command:
```
  stpa-render -o telltale.md telltale.yml
```
