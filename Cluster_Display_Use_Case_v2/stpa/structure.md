# Model the control structure

## Control Structure

![Control Structure diagram for Cluster](cluster-control-structure.dot.png)

## Notes

Rendering (Qt)
- Qt framework components responsible for managing display rendering
- Manages image buffer
- Provides image buffer address to Display Controller (via kernel)

Display controller
- Hardware / firmware components in SoC
- Composes image and renders on the display

Display
- Provides rendered image data to Telltale checking
    - How does the kernel facilitate this?
