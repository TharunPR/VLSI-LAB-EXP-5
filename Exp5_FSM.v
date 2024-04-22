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
