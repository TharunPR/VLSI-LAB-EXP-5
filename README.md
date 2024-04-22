# SIMULATION AND IMPLEMENTATION OF FINITE STATE MACHINE

**AIM:**<br> 

&emsp;&emsp;To simulate and implement finite state machine using Xilinx ISE.

**APPARATUS REQUIRED:**<br>

&emsp;&emsp;VIVADO 2023.2

**PROCEDURE:**<br>
STEP:1  Launch the Vivado 2023.2 software.<br>
STEP:2  Click on “create project ” from the starting page of vivado.<br>
STEP:3  Choose the design entry method:RTL(verilog/VHDL).<br>
STEP:4  Crete design source  and give name to it and click finish.<br>
STEP:5  Write the verilog code and check the syntax.<br>
STEP:6  Click “run simulation” in the navigator window and click “Run behavioral simulation”.<br>
STEP:7  Verify the output in the simulation window.<br>

**Logic Diagram:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-5/assets/6987778/34ec5d63-2b3b-4511-81ef-99f4572d5869)

**VERILOG CODE:**
```
module fsm_moore(clk, rst, x, z);
input clk, rst, x;
output z;
reg  [1:0]present_state, next_state; 
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
always@(x,present_state)
case(present_state)
s0: if (x)
next_state=s1;
else
next_state=s0;
s1: if (x)
next_state=s1;
else
next_state=s2;
s2: if (x)
next_state=s3;
else
next_state=s0;
s3: if (x)
next_state=s1;
else
next_state=s2;
endcase
always@(negedge rst, posedge clk)
if (rst)
present_state<=s0;
else
present_state<=next_state;
assign z=(present_state==s3);
endmodule
```
**OUTPUT:**

![image](https://github.com/TharunPR/VLSI-LAB-EXP-5/assets/117915125/63211817-1d01-4f46-809f-23b24a315216)

**RESULT:**<br>
&emsp;&emsp;Thus the simulation and implementation of Finite State MOORE Machine is is done and the outputs are verified successfully.



