# Readme file for Blackboard

### Document sections

 - Requirements
 - Download design
 - Install board files
 - Build hardware
 - Load software
 - Test the board
 - Build SD card
 - Using Linux on Blackboard
 - Build new boot files

## Requirements

 - Vivado and XSDK 2017.4 loaded and operational.  Newer versions may work,
   but there may be some porting effort required.
 - Windows or Linux PC.  A build of the system has been tested on Linux.
 - An 8 GByte, or larger, microSD FLASH card to boot Linux.  It is recommended
   one use a Class 10 microSD card or better.  The system has been tested with
   a Kingston microSD card, part number SDCIT/8GB.  A larger microSD card
   is recommended to load additional Ubuntu packages.
 - Edimax EW-7811Un Wi-Fi dongle or Apple USB to Ethernet dongle for networking.

## Download design

 - Use "git clone" to copy the git repository from github to a local machine.

## Install board files
 - The Vivado "board.repoPaths" parameter must be set to the path of the
   "board_files" directory.  You can edit the Vivado_init.tcl startup script
   and add the line shown below.  If the script does not exist, create it in
   the ~/.Xilinx/Vivado directory.

   ```
   set_param board.repoPaths [list "<path to board_files>"]
   ```

   Substitute in the real path for <path_to_board_files> above.  When you run
   Vivado, the Vivado_int.tcl script will be executed.

   The location of the Vivado_init.tcl file for Linux and Windows is:
   - Linux: From your home directory, in the ".Xilinx/Vivado" subdirectory
   - Windows: From your home directory, in the "AppData\Xilinx\Vivado"
     subdirectory.  The path to "AppData" is in the environment variable
     "APPDATA".

## Build hardware

1. Bring up Xilinx Vivado.
2. Use "Tools->Run Tcl Script..." to run the script "linux-blackboard.tcl"
   located in the main directory.
3. Click the "Generate Bitstream" button on the lower-left column.  This
   will kick off the hardware synthesis, implementation, and generation
   of the bitstream.
4. After generation of the bitstream, export the design to the "sw" directory
   by selecting "File->Export->Export Hardware".  When the "Export Hardware"
   dialog comes up, make sure the "Include bitstream" box is checked and then
   select the "sw" subdirectory for "Export to".
5. Finally, select "File->Launch SDK" to bring up Xilinx SDK.  When the
   "Launch SDK" dialog comes up, select the "sw" subdirectory for both the
   "Exported location" and "Workspace".

## Load software

1. After completing the Build hardware steps in the previous section, the
   Xilinx SDK comes up and will load in the exported files, which takes less
   than a minute.
2. Once loaded, select "File->Import..." from the menu to load in the existing
   software projects.
3. From the Import dialog, select from the tree the
   "General->Existing Projects into Workspace" and click "Next".
4. For the root directory, browse to the "sw" subdirectory.
5. The Projects that will be imported should already be checked.  Then click
   "Finish" to import the projects.  The import and build will take about
   a minute or so to complete, but will likely result in a few errors.
6. If errors occur, expand the "bsp" item in the tree and then double-click
   on "bsp->system.mss" in the Project Explorer tab on the left.  The
   "bsp Board Support Package" window will appear in the middle section.
   Click on the "Re-generate BSP Sources" button and then click on "Yes" when
   the confirmation dialog appears.  This should fix the errors encountered
   in step 5.

## Test the board

1. Connect a USB cable from the PC to J10 on the board.  You will need this
   cable connected as a minimum to test the board.
2. Make sure jumper JP2 is set for "JTAG" and jumper JP3 is set to "EXTP" if
   using an external USB power supply connected to J13.  If only using the
   USB connection to J10, select "USB" for JP3.  Turn on switch SW80.  If
   power is active, LED LD16 will light up in red.
3. You should now run a terminal emulator, like Teraterm or minicom to connect
   to the serial port that has been assigned to the board.  Once connected,
   output from the tests will be displayed in the main window of the terminal
   emulator program.  For the port parameters, use 115200 baud, 8 bits, 1 stop
   bit, no parity, and no flow control.
4. With the software projects built, the bit file can be downloaded to the
   FPGA.  To do this, select "Xilinx->Program FPGA" from the menu.
   Then click the "Program" button in the "Program FPGA" dialog.  The green
   LED, LD15, near the 7-segment display should light up when programming
   completes.
5. The first test to try after programming the FPGA is the "memtest".
   Right click on "memtest" from the "Project Explorer" on the left side
   of the SDK.  Then select "Run As->Launch on Hardware (System Debugger)"
   from the drop-down menu.  As an alternative, you can click on "memtest" to
   select it and then select "Run->Run As->Launch on Hardware (System Debugger)"
   from the main menu.  This will download the memory test application
   to Blackboard and run it.  Press "1" to run a short memory test.  You
   should see all tests pass.
6. You can also run the "hello" application in a similar manner as
   described for the memory test program.  The hello application runs
   from DDR3 memory whereas the memory test runs from FPGA SRAM.

## Build SD card

1. Download the Ubuntu 16.04 LTS software image from:
     <http://allterrainsw.com/wp-content/blackboard_18Feb2019a.img.gz>.
     Alternatively, download the Ubuntu 18.04 LTS software image from:
     <http://allterrainsw.com/wp-content/blackboard_15Aug2020b.img.gz>.
     
2. Decompress the image file.  On Linux, you can use either:
   - "gunzip blackboard_18Feb2019a.img.gz" for the Ubuntu 16.04 image.
   - "gunzip blackboard_15Aug2020a.img.gz" for the Ubuntu 18.04 image.
   You can use WinZip to decompress the file in Windows.
3. The image needs to be burned onto the SD card.  For Linux you can use:
   - "dd if=blackboard_18Feb2019a.img of=/dev/sdX bs=512" where the X in
     sdX is replaced with the actual disk that represents the SD card.
     - Substitute in blackboard_15Aug2020a.img above for the Ubuntu 18.04 LTS image.
   - For Windows you can use imageUSB by PassMark Software.
     - Select the drive in "Step 1".
     - Select "Write image to USB drive" in "Step 2".
     - Browse to "blackboard_18Feb2019a.img" or "blackboard_15Aug2020a.img" in "Step 3" of the PassMark software.
     - Then click the "Write" button.
4. Copy the following files from the "bootfiles" subdirectory to the
   first partition on the SD FLASH card, if needed:
   - BOOT.bin
   - devicetree.dtb
   - system.bit
   - uImage
   - rtlwifi.tar.gz (For USB Wi-Fi)

   These files have been pre-built and tested on a real board for both versions
   of Ubuntu.  The "BOOT.bin", "uImage", "devicetree.dtb", and "system.bit"
   files should already be on the first partition after completing step 3 above.
   These files are for Blackboard Rev. D.
5. Unmount (Linux) or eject (Windows) the SD card from the PC and then insert
   it into the "SD MICRO" slot on Blackboard.
6. To boot Linux, make sure JP2 is set to "SD" and connect an external USB
   supply to J13.  Make sure JP3 is set to "EXTP".
7. Turn on SW80 to power-up the board.  Linux should boot with log messages
   being displayed on the main window of the terminal emulator.  See the
   Test section above for setting up a terminal emulator.
8. A USB hub with a keyboard and mouse can be plugged into J8 of the board
   To start an X windows session, type "startx" on the keyboard plugged
   into Blackboard.  X-Windows should start up in about a minute.

## Using Linux on Blackboard

1. The partition size for the ext4 Linux partition is only about 4 GBytes in
   size.  To fully use the 8 GByte or bigger SD card, utilize the
   "build-swap.sh" script located in the "/root/Scripts" directory.  To
   increase the Linux partition size and create the swap file run the
   command "build-swap.sh -e" using a terminal from the "/root/scripts"
   directory.  The "-e" option tells the script to increase the Linux
   partition to fill the rest of the available space on the SD card.
   
2. To bring up networking, plug in a USB network dongle or Wi-Fi dongle.
   We have had good success using an Apple USB to Ethernet dongle when using
   a physical network connection.
   For Wi-Fi, you will likely need to load some firmware files to the
   /lib/firmware directory.  For Realtek drivers, you already copied the
   firmware files to the first partition of the SD card in the Build SD card
   step above.  To move them to the /lib/firmware directory, perform the
   following steps:
   - Mount partion 1 by typing "mount /dev/mmcblk0p1 /boot"
   - Then switch to the /lib/firmware directory by typing "cd /lib/firmware".
   - Now copy in the firmware files by typing
       "tar xvzf /boot/rtlwifi.tar.gz ."
3. If using a USB Wi-Fi dongle, use the following steps to configure
   Linux for your Wi-Fi network:
   - Plug in the Wi-Fi dongle to the powered USB hub.
   - From the X-Windows GUI, click on "Preferences->Network Connections"
     from the launch menu in the lower-left corner.
     - For Ubuntu 18.04 LTS, you can click on the network icon in the system
       tray located on the lower-right section of the screen.  Select from
       the list of available wireless networks that should pop up.  A prompt
       should appear after selecting a network that asks for the passphrase.
       When using this process, the remaining steps listed below can be
       skipped.
   - Select "Add" on the upper-right side of the new dialog.  After clicking
     "Add", wait for the next dialog window to pop up and select "Wi-Fi" for
     the Connection Type.  Then click the "Create..." button.
   - After the next dialog pops up, type in the SSID for your Network Name on
     the "Wi-Fi" tab.
   - In the "Wi-Fi Security" tab, select your Security type, enter in the
     password, and then click "Save".  If you are unsure of what Security
     type to select, you should select "WPA & WPA2 Personal" since that is
     what most routers are configured for.
   - After clicking "Save", a network connection should be established if
     the Wi-Fi SSID and security have been entered correctly.
   We have used an Edimax EW-7811Un Wi-Fi dongle successfully using the above
   steps.
4. With networking operational, you can update the Ubuntu software.  To do
   the upgrade, use the following steps:
   - Type "apt update" to fetch the latest metadata for Ubuntu.
   - Type "apt upgrade" to perform the actual update to the various
     packages installed on the system.
5. If you use the graphics login or the terminal login with Ubuntu 18.04 LTS,
   the default password for the blackboard user is "blackboard".  On Ubuntu
   16.04 LTS, the default password for root is also "blackboard".  There is no
   assigned root password on Ubuntu 18.04 LTS, but "sudo" will provide access
   to root for the blackboard user.

## Build new boot files

To build new boot files for the SD card, use the following steps:

 - To create a new BOOT.bin file, make sure steps 1 and 2 of the
   "Load software" section have been completed.  Then click on
   "fsbl" in the "Project Explorer" on the left hand side.
   Then select "Xilinx->Create Boot Image" from the main menu.  This
   will display the "Create Boot Image" dialog.  Select the "Import from
   existing BIF file" radio button and then click the "Browse" button to
   select the "output.bif" file in the "sw/fsbl/bootimage" directory.  Then
   click on the "Create Image" button at the bottom.  Once complete, you can
   copy the "BOOT.bin" file from the "sw/fsbl/bootimage" subdirectory
   to the first partition of the SD card.
 - The device tree source files are generated when importing in the existing
   projects into XSDK.  The generated source files can be copied to the
   "/root/Src/dts" directory located on the Linux partition of the SD card.
   One line needs to be added to the bottom of the "system-top.dts" file and
   that line should be:

   ```
   /include/ "system-user.dtsi"
   ```

   Note that the device tree source files will not change unless the
   hardware configuration changes.

   To regenerate the "devicetree.dtb" file, run the "build-devicetree.sh"
   file located in the "root/Scripts" directory.  The resulting "devicetree.dtb"
   file can be copied from "/root/Src/dts" to the "/boot" directory on the SD
   card.  Make sure the "/dev/mmcblk0p1" partition on the SD card is mounted
   to the "/boot" directory prior to copying the "devicetree.dtb" file.
 - To recompile u-boot on Blackboard that is included in the "BOOT.bin" file,
   you will need to clone "u-boot-xlnx" from our git repository.  Once cloned
   on your local PC, you can use the following steps to build the u-boot elf
   file:
   - "apt-get install libfdt-dev" to install libfdt development libraries.
   - "apt-get install libssl-dev" to install libssl development libraries.
   - "make zynq_blackboard_defconfig"
   - "make"

   The "make" step will take a while to complete.  Alternatively, you can use
   the tools provided for XSDK to compile u-boot on Linux, which is much faster
   than compiling on Blackboard.  We use the following "build.sh" script to
   build u-boot on Linux:

   ```
   #!/bin/bash
   #
   # Script to launch cross compile build for u-boot.
   export ARCH=arm
   export CROSS_COMPILE=arm-linux-gnueabihf-
   export UBOOTVERSION=2017.01-Blackboard
   make zynq_blackboard_defconfig
   make UBOOTVERSION=$UBOOTVERSION

   ```

   Once built, you can copy the "u-boot" elf file in the "u-boot-xlnx"
   directory to "sw/fsbl/Debug/u-boot.elf" in "linux-blackboard".  From there,
   follow the first step in this section to create a new "BOOT.bin" file.
 - Compiling the Linux kernel is similar to u-boot.  You will first need to
   clone the linux-xlnx repository from RealDigitalOrg on github.com.  To do
   this, use the command
   "git clone https://github.com/RealDigitalOrg/linux-xlnx.git".  This will
   create the "linux-xlnx" directory.  Enter the "linux-xlnx" directory
   and execute "git checkout real_digital -b real_digital" to load the files
   needed for Blackboard.  We then use the following script on a Linux system
   that has the Xilinx XSDK tools loaded:

   ```
   #!/bin/bash
   #
   # Script to build Linux for ARM
   #
   # make ARCH=arm menuconfig
   # or
   make ARCH=arm blackboard_defconfig
   ARCH=arm make -j 4 UIMAGE_LOADADDR=0x8000 uImage modules 2>&1 | tee build.log
   make modules_install INSTALL_MOD_PATH=`pwd`/rootfs ARCH=arm 2>&1 | tee modules_install.log
   make headers_install INSTALL_HDR_PATH=`pwd`/rootfs/usr/ ARCH=arm 2>&1 | tee headers_install.log
   find rootfs/usr/include -name ".install" -delete
   find rootfs/usr/include -name "..install.cmd" -delete

   ```

   Once the build has completed, you can copy the uImage file located in the
   arch/arm/boot subdirectory to the /boot partition.  The loadable modules
   for the new kernel are located in the rootfs/lib/modules subdirectory and
   must be placed in the lib/modules subdirectory.  The linux headers are in
   the rootfs/usr/include subdirectory and can be placed in the /usr/include
   subdirectory.

   It is recommended that the cross-compiler installed with XSDK 2017.4 be
   used to perform the build of the Linux kernel since it typically takes less
   than an hour to complete.  The kernel can also be built on Blackboard
   using the above instructions, but it will take about 14 to 16 hours to
   complete.  If you do decide to use Blackboard to compile the kernel, make
   sure there is at least a 16 GB SD card installed with 4 GBytes of free
   space.
