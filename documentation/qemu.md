# qemu call of cluster-demo

The qemu image as generated by following the instructions from [meta-elisa](https://github.com/elisa-tech/meta-elisa/blob/master/README.md) is called with `qemu-system-x86_64` along with the following parameters:

 needed | option | parameter | meaning 
:---|:---|:---|:---
optional | -snapshot | |Temporary snapshot: write all changes to temporary files instead of hard drive image. |
needed |-device | virtio-net-pci,netdev=net0,mac=52:54:00:12:35:02| 
mandatory |-watchdog | i6300esb | 
|mandatory|-netdev | user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::2323-:23
||-netdev user| | Use the user mode network stack which requires no administrator privilege to run
||-netdev id| net0 | ID of the network device
||-netdev hostfwd|hostfwd=tcp::2222-:22,hostfwd=tcp::2323-:23 | Redirect incoming TCP connections to the host port 2222/2323 to the guest IP address on guest 22/23 guestport.
mandatory |-drive | file=./build/tmp/deploy/images/qemux86-64/agl-cluster-demo-platform-qemux86-64.ext4,if=virtio,format=raw | 
||-drive file| This option defines which disk image to use with this drive. If the filename contains comma, you must double it (for instance, "file=my,,file" to use file "my,file"). 
||-drive if | virtio | This option defines on which type on interface the drive is connected. Available types are: ide, scsi, sd, mtd, floppy, pflash, virtio. 
||-drive format | raw | Specify which disk format will be used rather than detecting the format. Specified as format=raw to avoid interpreting an untrusted format header. 
?|-show-cursor || add a mouse cursor to the demo
?|-usb ||Enable the USB driver (will be the default soon) 
?|-device usb-tablet | Question: Should this become "-usbdevice tablet"?
? Do we need a virtio random number generator |-device virtio-rng-pci |
? mandatory |-vga | virtio | Select type of VGA card to emulate
not needed|-soundhw | hda
? | -machine | q35 | Modern chipset (PCIe, AHCI, ...) adding ",accel=kvm" adds hardware virtualization acceleration
? |-cpu | kvm64 | Specify a processor architecture to emulate
? |-cpu | qemu64,+ssse3,+sse4.1,+sse4.2,+popcnt | 
||-enable-kvm | Enable KVM full virtualization support. This option is only available if KVM support is enabled when compiling. 
mandatory |-m | 4096 | Set virtual RAM size to 4096 megabytes
optional for now | -smp | 4 | Simulate an SMP system with 4 CPUs
duplicate ||-m | 2048 | Set virtual RAM size to 2048 megabytes
useful  | -serial mon:stdio | Redirect the virtual serial port to host character device. The default device is "vc" in graphical mode and "stdio" in non graphical mode.
useful | -serial | null | Redirect the virtual serial port to host character device
mandatory | -kernel | ./build/tmp/deploy/images/qemux86-64/bzImage | Use bzImage as kernel image. The kernel can be either a Linux kernel or in multiboot format. 
mandatory | -append | 'root=/dev/vda rw  console=ttyS0 mem=4096M ip=dhcp oprofile.timer=1 console=ttyS0,115200n8 quiet ' | Use as kernel command line 


Information extracted from:
- https://linux.die.net/man/1/qemu-kvm
- https://wiki.qemu.org/Features/VirtIORNG