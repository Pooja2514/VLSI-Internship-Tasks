#For universalgates And Logicates:
initial begin 
  a=0;b=0;#5
  a=0;b=1;#5
  a=1;b=0;#5
  a=1,b=1;
end

#For halfadder:
initial begin
a = 0; b = 0;
#10
b = 0; b = 1;
#10
a = 1; b = 0;
#10
b = 1; b = 1;
#10
end
       
#For fulladder:
initial begin
a = 0; b = 0; cin = 0;
#10
a = 0; b = 0; cin = 1;
#10
a = 0; b = 1; cin = 0;
#10
a = 0; b = 1; cin = 1;
#10
a = 1; b = 0; cin = 0;
#10
a = 1; b = 0; cin = 1;
#10
a = 1; b = 1; cin = 0;
#10
a = 1; b = 1; cin = 1;
#10
end
       
#For multiplexer:
initial begin
  a=1'b0; b=1'b0; c=1'b0; d=1'b0;
  s0=1'b0; s1=1'b0;
  #500 
end

#For demultiplexer:
initial begin
  d = 1;
  s0 = 0;
  s1 = 0;
 #100;
#100;d = 1;s0 = 1;s1 = 0;
#100;d = 1;s0 = 0;s1 = 1;
#100;d = 1;s0 = 1;s1 = 1;
end

