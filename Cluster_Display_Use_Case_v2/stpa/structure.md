# Model the control structure

## Control Structure

![Control Structure diagram for Cluster](cluster-control-structure.dot.png)

## Notes

Rendering (Qt)
- Qt framework components responsible for managing display rendering
- Manages image buffer
- Provides image buffer address to Display Controller (via kernel)

Framebuffer and Display controller
- Hardware / firmware components in SoC
- Composes image and renders on the display

Display
- Provides rendered image data to Telltale checking
    - How does the kernel facilitate this?

## Questions

- Why does the Request Handler communicate with the Telltale Checking by IPC?
- Does telltale requester need to know the vehicle state in order to detect a
  hazardous condition?
- Does the Vehicle set the state or do the Cluster App and the Telltale
  Requester get it?
