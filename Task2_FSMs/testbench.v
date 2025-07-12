module tb;
  reg din,clk,rst;
  wire dout;
  moore dut(.*);//replace moore as melay for melay testbench.
  initial
    begin
      clk=0;
      //forever #10 clk=~clk; //clk generation
      rst=1;#2;
      rst=0;#6;
      din=0;#4;
      din=1;#4;
      din=0;#4;
      din=1;#4;
      din=0;#4;//output dout=1
      din=1;#4;
      din=0;#4;//dout=1
      din=1;#4;
      din=0;#4;//dout=1
      din=1;#4
      din=0;#4;//output dout=1
      din=0;#4;
      $finish;
    end
  always #2 clk=~clk;//clk geneartion
endmodule
    
  
