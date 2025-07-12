Verilog code for Melay FSM:
  // Mealy FSM  for 10101
module mealy_nonoverlap(input din, clk, rst, output reg dout);
  parameter s0 = 3'b000;
  parameter s1 = 3'b001;
  parameter s2 = 3'b010;
  parameter s3 = 3'b011;
  parameter s4 = 3'b100;

  reg [2:0] p_state, n_state;

  // Present state logic
  always @(posedge clk) begin
    if (rst)
      p_state <= s0;
    else
      p_state <= n_state;
  end

  // Next state and output logic
  always @(p_state, din) begin
    dout = 0; // default output
    case (p_state)
      s0: begin
        if (din == 1)
          n_state = s1;
        else
          n_state = s0;
      end

      s1: begin
        if (din == 0)
          n_state = s2;
        else
          n_state = s1;
      end

      s2: begin
        if (din == 1)
          n_state = s3;
        else
          n_state = s0;
      end

      s3: begin
        if (din == 0)
          n_state = s4;
        else
          n_state = s1;
      end

      s4: begin
        if (din == 1) begin
          dout = 1;          // output happens immediately (Mealy style)
          n_state = s0;      // reset to s0 → non-overlapping
        end else
          n_state = s0;
      end

      default: n_state = s0;
    endcase
  end
endmodule
