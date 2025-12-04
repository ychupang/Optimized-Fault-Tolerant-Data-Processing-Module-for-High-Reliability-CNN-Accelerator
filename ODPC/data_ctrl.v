module data_ctrl(
    x_in,
    lbp1_in,
    lbp2_in,
    x_out,
    lbp1_out,
    lbp2_out,
    reset,
    clk
    );
    
    input [0:15] x_in;
    input [0:15] lbp1_in;
    input [0:15] lbp2_in;
    input clk;
    
    output [0:7] x_out;
    output [0:7] lbp1_out;
    output [0:7] lbp2_out;
    output reset;
   
    assign reset = clk?0:1;
    assign x_out = clk?x_in[8:15]:x_in[0:7];
    assign lbp1_out = clk?lbp1_in[8:15]:lbp1_in[0:7];
    assign lbp2_out = clk?lbp2_in[8:15]:lbp2_in[0:7];
    
endmodule
