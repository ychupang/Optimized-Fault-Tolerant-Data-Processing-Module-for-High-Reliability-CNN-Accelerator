module bit_comparator(     
        max,
        in_x,
        min,
        LBP1,
        LBP2,
        out_x
    );
    
    input [0:7] max;
    input [0:7] in_x;
    input [0:7] min;
   
    output [0:7] LBP1;
    output [0:7] LBP2;
    output [0:7] out_x;

    comparator comparator_0(
        .max(max[0]),
        .in_x(in_x[0]),
        .min(min[0]),
        .LBP1(LBP1[0]),
        .LBP2(LBP2[0]),
        .out_x(out_x[0])
    );
    comparator comparator_1(
        .max(max[1]),
        .in_x(in_x[1]),
        .min(min[1]),
        .LBP1(LBP1[1]),
        .LBP2(LBP2[1]),
        .out_x(out_x[1])
    );
    comparator comparator_2(
        .max(max[2]),
        .in_x(in_x[2]),
        .min(min[2]),
        .LBP1(LBP1[2]),
        .LBP2(LBP2[2]),
        .out_x(out_x[2])
    );
    comparator comparator_3(
        .max(max[3]),
        .in_x(in_x[3]),
        .min(min[3]),
        .LBP1(LBP1[3]),
        .LBP2(LBP2[3]),
        .out_x(out_x[3])
    );
    comparator comparator_4(
        .max(max[4]),
        .in_x(in_x[4]),
        .min(min[4]),
        .LBP1(LBP1[4]),
        .LBP2(LBP2[4]),
        .out_x(out_x[4])
    );
    comparator comparator_5(
        .max(max[5]),
        .in_x(in_x[5]),
        .min(min[5]),
        .LBP1(LBP1[5]),
        .LBP2(LBP2[5]),
        .out_x(out_x[5])
    );
    comparator comparator_6(
        .max(max[6]),
        .in_x(in_x[6]),
        .min(min[6]),
        .LBP1(LBP1[6]),
        .LBP2(LBP2[6]),
        .out_x(out_x[6])
    );
    comparator comparator_7(
        .max(max[7]),
        .in_x(in_x[7]),
        .min(min[7]),
        .LBP1(LBP1[7]),
        .LBP2(LBP2[7]),
        .out_x(out_x[7])
    );
    
endmodule
