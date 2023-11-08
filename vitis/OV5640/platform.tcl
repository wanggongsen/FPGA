# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\FPGA\OV5640\vitis\OV5640\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\FPGA\OV5640\vitis\OV5640\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {OV5640}\
-hw {D:\FPGA\OV5640\Zybo-Z7-20-pcam-5c-2019.1\vivado_proj\system_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {D:/FPGA/OV5640/vitis}

platform write
platform generate -domains 
platform active {OV5640}
bsp reload
