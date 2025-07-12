Verilog code for Moore FSM:
  // Code your design here
module moore(input rst,clk,d, output reg dout);
  parameter S0=3'b000;
  parameter S1=3'b001;
  parameter S2=3'b010;
  parameter S3=3'b011;
  parameter S4=3'b100;
  parameter S5=3'b101;
  reg [2:0]p_state,n_state;
  //present state logic
  always@(posedge clk)
    begin
      if(rst)
        p_state<=S0;
      else
        p_state<=n_state;
     end
  //present state logic
  always@(p_state,d)
    begin
      case(p_state)
        3'b000:
          begin
            dout=0;
          if(d==1)
            n_state=S1;
        else
          n_state=S0;
          end
        3'b001:
          begin
            dout=0;
          if(d==1)
            n_state=S2;
        else
          n_state=S0;
          end
        3'b010:
          begin
            dout=0;
          if(d==1)
            n_state=S2;
        else
          n_state=S3;
          end
        3'b011:
          begin
            dout=0;
          if(d==1)
            n_state=S4;
        else
          n_state=S0;
          end
        3'b100:
          begin
            dout=0;
          if(d==1)
            n_state=S5;
        else
          n_state=S0;
          end
       default:
          begin
            dout=1;
          if(d==1)
            n_state=S1;
        else
          n_state=S0;
          end
      endcase
       end
endmodule
