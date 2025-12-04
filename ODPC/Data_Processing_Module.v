module Data_Processing_Module(
        data_x,
        data_min,
        data_max,
        comp_max,
        comp_min,
        comp_x
    );
    
    input [0:7] data_x;
    input [0:7] data_min;
    input [0:7] data_max;
    
    output [0:3] comp_max;
    output [0:3] comp_min;
    output [0:7] comp_x;
    
     wire [0:7] comp_LBP1_o;
     wire [0:7] comp_LBP2_o;
     
   bit_comparator Bit_Comparator(
        .max(data_max),
        .in_x(data_x),
        .min(data_min),
        .LBP1(comp_LBP1_o),
        .LBP2(comp_LBP2_o),
        .out_x(comp_x)
    );
    
    LBP_encoder Encoder1(
        .data4(comp_LBP1_o),
        .data2(comp_max)
    );
    
    LBP_encoder Encoder2(
        .data4(comp_LBP2_o),
        .data2(comp_min)
    );
    
endmodule
