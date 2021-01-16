# How to identify changed Requirements in a Safety Concept Mindmap
The .mm file format is .xml based, and every node has a hidden Property "MODIFIED" encoding the date and time of the last modification.
This means that any change in a node implies a change of the "MODIFIED" Property allowing us to extract the IDs of changed requirements using git, which can easily be done with a little bit of bash juggling:

## Obtaining the changed lines with git
The following produces the patch series between two revisions of the file with only changed lines and saves it to the Intermediate.txt file instead to a serieos of patch files:

```git format-patch <Start Revision>..<Stop Revision> -U0 --stdout Telltale_concept.mm > Intermediate.txt```

## Extracting the IDs of changed nodes
We now can use grep to find the IDs of changed requirements:

```grep -E "ID=\"ID_.{,12}\"" --only-matching Intermediate.txt > Intermediate2.txt```

## Getting rid of doubles
This contains every ID several times, thus to get rid of doubles:

```uniq Intermediate2.txt  ```

## Piping it all together
Now for the finale, getting rid of the intermediate files and pipe from one step to the next instead

```git format-patch <Start Revision>..<Stop Revision> -U0 --stdout Telltale_concept.mm | grep -E "ID=\"ID_.{,12}\"" --only-matching | uniq```

## Merging and workmode
Since the file format plays nicely with Git, to some extend at least, merging is feasible, so feel free to work on the mindmap and create a pull request. If it turns out it is not, for instance when in each branch the mindmap gets reordered, we can use the method above to perform complex merges by hand, if necessary. 

For safety analysis purpose, the procedure above should make it streight forward to keep the analysis synchronized when moving on to a newer revision of the mindmap.








