module Output_Controller(
    in_x,
    inLBP1,
    inLBP2,
    outLBP1,
    outLBP2,
    minmax_on,
    reset
);
    input [0:7] in_x;
    input [0:3] inLBP1;
    input [0:3] inLBP2;
    input minmax_on;
    input reset;
    
    wire data1;
    wire data2;
    wire same1;
    wire same2;
    
    output outLBP1;
    output outLBP2;
    
    LBP_control Output_Control1(
        .in_LBP1(inLBP1),
        .in_x(in_x),
        .LBP1_result(data1),
        .same(same1)
    );
    
    LBP_control_2 Output_Control2(
        .in_LBP1(inLBP2),
        .in_x(in_x),
        .minmax_on(minmax_on),
        .LBP1_result(data2),
        .same(same2)
    );

    out_reg out_reg1(
    .msb_result(data1),
    .same(same1),
    .reset(reset),
    .result(outLBP1)
    );
    
    out_reg out_reg2(
    .msb_result(data2),
    .same(same2),
    .reset(reset),
    .result(outLBP2)
    );
    
endmodule