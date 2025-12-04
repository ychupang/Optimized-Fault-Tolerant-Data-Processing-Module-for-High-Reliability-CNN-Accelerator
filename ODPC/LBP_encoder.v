module LBP_encoder(
    data4,
    data2
    );
    
    input [0:7] data4;
   
    output [0:3] data2;
    
    assign data2 = (data4[0] ==1'b1 ) ? 4'b1110:
               (data4[1] ==1'b1 ) ? 4'b1100:
               (data4[2] ==1'b1 ) ? 4'b1010:
               (data4[3] ==1'b1) ? 4'b1000:
               (data4[4] ==1'b1) ? 4'b0110:
               (data4[5] ==1'b1) ? 4'b0100:
               (data4[6] ==1'b1) ? 4'b0010:
               (data4[7] ==1'b1) ? 4'b0000: 4'b0001;
   
endmodule