module comparator_top(
        Pivot_x,
        LBP1_max,
        LBP2_min,
        LBP1_max_out,
        LBP2_min_out,
        minmax_on,
        clk
    );

     input [0:15] Pivot_x;
     input [0:15] LBP1_max;
     input [0:15] LBP2_min;
     input minmax_on;
     input clk;  
     
     output LBP1_max_out;
     output LBP2_min_out;
    
     wire [0:7] data_x_out;
     wire [0:7] data_min_out;
     wire [0:7] data_max_out;
    
     wire [0:7] comp_x_o;
     wire [0:3] encoder1_data_o;
     wire [0:3] encoder2_data_o;
    
    wire reset;
    
    data_ctrl Data_Control(
        .x_in(Pivot_x),
        .lbp1_in(LBP1_max),
        .lbp2_in(LBP2_min),
        .clk(clk),
        .reset(reset),
        .x_out(data_x_out),
        .lbp1_out(data_max_out),
        .lbp2_out(data_min_out)
    );
    
    Data_Processing_Module Data_Processing_Module(
        .data_x(data_x_out),
        .data_min(data_min_out),
        .data_max(data_max_out),
        .comp_max(encoder1_data_o),
        .comp_min(encoder2_data_o),
        .comp_x(comp_x_o)
    );
    
    Output_Controller Output_Controller(
        .in_x(comp_x_o),
        .inLBP1(encoder1_data_o),
        .inLBP2(encoder2_data_o),
        .outLBP1(LBP1_max_out),
        .outLBP2(LBP2_min_out),
        .minmax_on(minmax_on),
        .reset(reset)
    );
    
endmodule