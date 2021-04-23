Processorless Ethernet with FPGA
================================

## Description

This repository contains example designs for experimenting with processorless (ie. state machine based) 
Ethernet on FPGAs. The base hardware is the Opsero [Ethernet FMC](https://ethernetfmc.com "Ethernet FMC") 
and the example designs support several FPGA development boards (listed below). The designs contain 4 TEMAC 
blocks driven by custom IP (Verilog) to handle PHY configuration, packet generation and packet checking, all 
from the FPGA fabric (no processor).

## Requirements

This project is designed for version 2020.2 of the Xilinx tools (Vivado/Vitis/PetaLinux). 
If you are using an older version of the Xilinx tools, then refer to the 
[release tags](https://github.com/fpgadeveloper/ethernet-fmc-processorless/releases "releases")
to find the version of this repository that matches your version of the tools.

In order to test this design on hardware, you will need the following:

* Vivado 2020.2
* [Ethernet FMC](https://ethernetfmc.com "Ethernet FMC")
* One of the below listed evaluation boards
* [Xilinx Soft TEMAC license](https://ethernetfmc.com/getting-a-license-for-the-xilinx-tri-mode-ethernet-mac/ "Xilinx Soft TEMAC license")

## Supported carrier boards

* Artix-7 [AC701 Evaluation board](http://www.xilinx.com/ac701 "KC705 Evaluation board")
* Kintex-7 [KC705 Evaluation board](http://www.xilinx.com/kc705 "KC705 Evaluation board")
* Kintex Ultrascale [KCU105 Evaluation board](http://www.xilinx.com/kcu105 "KCU105 Evaluation board")
* Virtex-7 [VC707 Evaluation board](http://www.xilinx.com/vc707 "VC707 Evaluation board")
* Virtex-7 [VC709 Evaluation board](http://www.xilinx.com/vc709 "VC709 Evaluation board")
* Virtex UltraScale [VCU108 Evaluation board](http://www.xilinx.com/vcu108 "VCU108 Evaluation board")
* Virtex UltraScale+ [VCU118 Evaluation board](http://www.xilinx.com/vcu118 "VCU118 Evaluation board")

## Contribute

We encourage contribution to these projects. If you spot issues or you want to add designs for other platforms, please
make a pull request.

## About us

This project was developed by [Opsero Inc.](https://opsero.com "Opsero Inc."),
a tight-knit team of FPGA experts delivering FPGA products and design services to start-ups and tech companies. 
Follow our blog, [FPGA Developer](https://www.fpgadeveloper.com "FPGA Developer"), for news, tutorials and
updates on the awesome projects we work on.