## Code:
#For Logic gates:
module logicgates(a,b,YAND,YOR,YNOT,YXOR);
  input a,b;
  output YAND,YOR,YNOT,YXOR;
  assign YAND = a&b;
  assign YOR = a|b;
  assign YNOT = ~a;
  assign YXOR = a^b;
endmodule

#For Universal gates:
module universalgates(a,b,YNAND,YNOR);
  input a,b;
  output YNAND,YNOR;
  assign YNAND = ~(a&b);
  assign YNOR = ~(a|b);
endmodule

#For Adders:
module halfadder(a,b,s,c);
  input a,b;
  output s,c;
  assign s = a ^ b;
  assign c = a & b;
endmodule
module fulladder(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  assign sum = a ^ b ^ cin;
  assign carry = (a & b) | (b & cin)  | (cin & a) ;
endmodule

#For Multiplexers:
module mux4x1(a,b,c,d,s0,s1,z);
  input s0;
  input s1;
  input a;
  input b;
  input c;
  input d;
  output z;
  assign z = (a & (~s1) & (~s0)) |(b & (~s1) & s0) |(c & s1 & (~s0)) |(d & s1 & s0);
endmodule
module demux_1x4(d,s0,s1,y0,y1,y2,y3);
  input d;
  input s0;
  input s1;
  output y0;
  output y1;
  output y2;
  output y3;
  assign s1n = ~ s1;
  assign s0n = ~ s0;
  assign y0 = d& s0n & s1n;
  assign y1 = d & s0 & s1n;
  assign y2 = d & s0n & s1;
  assign y3 = d & s0 & s1;
endmodule



