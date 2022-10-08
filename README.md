# Design-and-analysis-of-First-order-Sigma-Delta-A-to-D-Converter


#### This repository presents the Design-and-analysis-of-First-order-Sigma-Delta-A-to-D-Converter. Design-and-analysis-of-First-order-Sigma-Delta-A-to-D-Converter is done by using an Opensource EDA Tool called eSim, an Opensource Spice Simulator called ngspice. Verilog code is designed in opensource Verilog Environment called Makerchip.


## Table of Contents
#### 1.[ABSTRACT]
#### 2.[SOFTWARE USED]
#### 3.[CIRCUIT DESIGN]
#### 4.[IMPLEMENTATION]
#### 7.[REFERENCES]
#### 8.[AKNOWLEDGEMENT]

### 1. ABSTRACT

This paper details an approach to design and analyse a First-order Sigma-Delta Analog-to-Digital Converter (ΣΔ ADC) with mixed signal approach. The design produces a high-resolution data-stream output, as this consist of the Analog-block comprising of a differentiator, an integrator and a comparator and the digital-block comprising of D-latch acting as a path of negative feedback to the difference amplifier. Sigma-Delta ADC can be used effectually to digitize the diverse types of signals around which are processing numerous applications in the field of electronics and communication systems.

### 2. SOFTWARE USED

### eSIM EDA TOOL

eSim is an open source EDA tool for circuit design, simulation and analysis , developed by FOSSEE Team at IIT Bombay. It is an integrated tool build using open source softwares such as KiCad, Ngspice and GHDL.
More details on eSIM tool can be found [here](https://esim.fossee.in/)

### Makerchip

Makerchip is an opensource tool for developing verilog code for the digital circuits and simulate it. By using using eSim and makerchip we can develop model for our selected digital circuit.
More details on Makerchip can be found [here](https://www.makerchip.com/)

### Verilator
It is a tool which converts Verilog code to C++ objects. 
More details on verilator can be found [here](https://www.veripool.org/verilator/)

 ### 3. CIRCUIT DESIGN
 
#### Sigma-Delta ADC:

The leftmost op-amp represents the difference amplifier to which the Analog input is fed at one terminal and another input is fed from the 1-bit DAC (Digital to Analog Converter) which follows the negative feedback path. The output from this amplifier is fed to the integrator which is going to add the obtained value from the difference amplifier with the previously present value. The integrated output is now fed to the next block that is comparator, this acts as one sort of 1-bit ADC, that producing 1-bit of output either high (‘1’) or low (‘0’) depending on whether the integrator output is positive or negative. 

Next is the D-latch to which the output from the comparator is fed. It latches the comparator’s output at every clock pulse, and the final data-stream output is obtained from its end. This +V feedback signal tends to drive the integrator output in a negative direction. If that output voltage ever becomes negative, the feedback loop will send a corrective signal (-V) back around to the top input of the integrator to drive it in a positive direction. A part of it is fed back to the difference amplifier via the 1-bit DAC bridge. 

Variations on this theme exist, employing multiple integrator stages and/or comparator circuits outputting more than 1 bit, but one concept common to all ΔΣ converters is that of oversampling. Oversampling is when multiple samples of an Analog signal are taken by an ADC (in this case, a 1-bit ADC), and those digitized samples are averaged.

#### Reference Circuit

![Schematic](https://user-images.githubusercontent.com/115364736/194721432-bd1dc437-10eb-4d9c-8b1a-c6ded44db977.jpg)

#### Reference Waveforms

![Waveform](https://user-images.githubusercontent.com/115364736/194721455-98ab2dd8-42f4-497c-905c-6b4d175a33f8.jpg)

### 4. IMPLEMENTATION

#### Verilog Code for D_latch

module d_latch ( input d,             // 1-bit input pin for data
                 input en,            // 1-bit input pin for enabling the latch
                 input rstn,         // 1-bit input pin for active-low reset
                 output reg q);       // 1-bit output pin for data output

// This always block is "always" triggered whenever en/rstn/d changes
// If reset is asserted, then the output will be zero
// Else as long as enable is high, output q follows input d

always @ (en or rstn or d)
if (!rstn)
q <= 0;
else
if (en)
q <= d;
endmodule


TLV_version 1d: tl-x.org \SV /* verilator lint_off UNUSED*/ /* verilator lint_off DECLFILENAME*/ /* verilator lint_off BLKSEQ*/ /* verilator lint_off WIDTH*/ /* verilator lint_off SELRANGE*/ /* verilator lint_off PINCONNECTEMPTY*/ /* verilator lint_off DEFPARAM*/ /* verilator lint_off IMPLICIT*/ /* verilator lint_off COMBDLY*/ /* verilator lint_off SYNCASYNCNET*/ /* verilator lint_off UNOPTFLAT / / verilator lint_off UNSIGNED*/ /* verilator lint_off CASEINCOMPLETE*/ /* verilator lint_off UNDRIVEN*/ /* verilator lint_off VARHIDDEN*/ /* verilator lint_off CASEX*/ /* verilator lint_off CASEOVERLAP*/ /* verilator lint_off PINMISSING*/ /* verilator lint_off BLKANDNBLK*/ /* verilator lint_off MULTIDRIVEN*/ /* verilator lint_off ASSIGNDLY*/ /* verilator lint_off MODDUP*/ /* verilator lint_off STMTDLY*/ /* verilator lint_off LITENDIAN*/ /* verilator lint_off INITIALDLY*/

//Your Verilog/System Verilog Code Starts Here: module dlatch ( input d, // 1-bit input pin for data
input en, // 1-bit input pin for enabling the latch
input rstn, // 1-bit input pin for active-low reset
output reg q); // 1-bit output pin for data output

// This always block is "always" triggered whenever en/rstn/d changes
// If reset is asserted, then the output will be zero
// Else as long as enable is high, output q follows input d

always @ (en or rstn or d)
if (!rstn)
q <= 0;
else
if (en)
q <= d;
endmodule

//Top Module Code Starts here: module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed); logic d;//input logic en;//input logic rstn;//input logic q;//output //The $random() can be replaced if user wants to assign values assign d = 20'b01001010011011001100; assign en = 20'b01010101010101010101; assign rstn = 20'b10000000000000000000; dlatch dlatch(.d(d), .en(en), .rstn(rstn), .q(q));

\TLV //Add \TLV here if desired
\SV endmodule


#### Makerchip Plots

![Verilog_code](https://user-images.githubusercontent.com/115364736/194721638-bd1efbf8-3909-4579-be7c-712ded836c68.jpg)


#### Model For D_latch

![image](https://user-images.githubusercontent.com/115364736/194721700-4e26b61f-8331-4375-8791-283bd278a569.png)


#### Schematic Diagram

![sch1](https://user-images.githubusercontent.com/91964227/194720209-26e0de75-1c29-4bc8-99c9-7cbbe606a47d.JPG)

#### Netlists

* c:\users\lenovo\esim-workspace\sigma_deltaadc\sigma_deltaadc.cir

.include avsd_opamp.sub
.include "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__diode_pw2nd_11v0.model.spice"
.include "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__pnp.model.spice"
.include "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__r+c.model.spice"
.include "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__diode_pd2nw_11v0.model.spice"
.lib "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130.lib.spice" tt
.include "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__inductors.model.spice"
.include "C:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__linear.model.spice"
v2  analog_in gnd pulse(0 5 0.1n 0.1n 0.1n 10n 20n)
v3 net-_x1-pad1_ net-_x1-pad2_  dc 5
x1 net-_x1-pad1_ net-_x1-pad2_ net-_sc1-pad2_ net-_sc5-pad2_ dif_out gnd avsd_opamp
x2 net-_x2-pad1_ net-_x2-pad2_ gnd net-_sc3-pad2_ intg_out gnd avsd_opamp
v5 net-_x2-pad1_ net-_x2-pad2_  dc 5
x3 net-_x3-pad1_ net-_x3-pad2_ intg_out gnd comp_out gnd avsd_opamp
v6 net-_x3-pad1_ net-_x3-pad2_  dc 5
* u4  bit_out net-_sc5-pad1_ dac_bridge_1
* u1  analog_in plot_v1
* u3  dif_out plot_v1
* u6  intg_out plot_v1
* u10  bit_out plot_v1
* s c m o d e
xsc2 net-_sc2-pad1_ dif_out net-_sc1-pad3_ sky130_fd_pr__res_generic_pd W=1 L=5.2
xsc3 dif_out net-_sc3-pad2_ net-_sc1-pad3_ sky130_fd_pr__res_generic_pd W=1 L=5.2
xsc4 intg_out net-_sc3-pad2_ sky130_fd_pr__cap_mim_m3_1 W=500 L=1 M=1
* u7  comp_out plot_v1
xsc6 net-_sc1-pad2_ net-_sc2-pad1_ net-_sc1-pad3_ sky130_fd_pr__res_generic_pd W=1 L=5.2
xsc1 analog_in net-_sc1-pad2_ net-_sc1-pad3_ sky130_fd_pr__res_generic_pd W=1 L=5.2
xsc5 net-_sc5-pad1_ net-_sc5-pad2_ net-_sc1-pad3_ sky130_fd_pr__res_generic_pd W=1 L=5.2
* u2  comp_out bit_out adc_bridge_1
v1 net-_sc1-pad3_ gnd  dc 5
a1 [bit_out ] [net-_sc5-pad1_ ] u4
a2 [comp_out ] [bit_out ] u2
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u4 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u2 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
.tran 2e-09 10e-09 0e-09

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(analog_in)
plot v(dif_out)
plot v(intg_out)
plot v(bit_out)
plot v(comp_out)
.endc
.end



### 5. Steps to generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip
3. Add top level verilog file in Makerchip Tab
4. click on Edit in makerchip to simulate the verilog code
5. Click on NgVeri tab
6. Add dependency files(If any)
7. Click on Run Verilog to NgSpice Converter
8. Debug if any errors
9. Model created successfully

### 6. Steps to run the project
1. Open new terminal
2. Clone this project using the following command:

git clone https://github.com/Totashri-Sajjanar/abhinandann/Design and analysis of First-order Sigma-Delta 
A-to-D Converter.git

3. Change Directory: 

cd esim-workspace/Sigma_DeltaAdc

4. Run Ngspice:

ngspice Sigma_DeltaAdc.cir.out

5. To run the project in eSim:
* Run eSim
* Load the project
* Open eeSchema

### 7. REFERENCES

1. Anup G. Dakre, “Design and Simulation of 1-Bit Sigma-Delta ADC using Ngspice Tool.” International Journal of Advanced Research in Computer Science and Electronics    Engineering. Volume 1, Issue2, April 2012.
2. Jaydip H. Chaudhari, “Design and Simulation of First-order Sigma-Delta ADC in 0.13um CMOS Technology.” International Research Journal of Engineering and Technology (IRJET), Vol. 2 Issue 4, April-2013.
3. https://www.allaboutcircuits.com/textbook/digital/chpt-13/delta-sigma-adc/
4. https://www.beis.de/Elektronik/DeltaSigma/DeltaSigma.html

### 8. AKNOWLEDGEMENT
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. [Kunal Ghosh](https://github.com/kunalg123), Co-founder of VLSI System Design (VSD) Corp. Pvt. Ltd.
4. [Sumanto kar](https://github.com/Eyantra698Sumanto), Sr. Project Technical Assistant, IIT BOMBAY

### 9. AUTHOR

TOTASHRI P SAJJANAR, 7th SEM B.E(ECE), SDM COLLEGE OF ENGINEERING AND TECHNOLOGY,DHARWAD-580002 
* Contact: totashrisajjanar19@gmail.com
