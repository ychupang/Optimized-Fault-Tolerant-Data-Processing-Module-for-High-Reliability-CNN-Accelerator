module LBP_control(
    in_LBP1,
    in_x,
    LBP1_result,
    same
    );
    
    input [0:3] in_LBP1;
    input [0:7] in_x;
    
    reg LBP1_out;
    output LBP1_result;
    output reg same;
    
     always@(in_LBP1) begin
            case (in_LBP1)
            4'b0000:begin
                if (in_x[7] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b0010:begin
                if (in_x[6] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b0100:begin
                if (in_x[5] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b0110:begin
                if (in_x[4] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b1000:begin
                if (in_x[3] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b1010:begin
                if (in_x[2] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b1100:begin
                if (in_x[1] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b1110:begin
                if (in_x[0] == 1) begin 
                    LBP1_out <= 1;
                end
                else LBP1_out <= 0;
            end
            4'b0001:begin
                LBP1_out <= 1;
                same <= 1;
            end
            default begin
                LBP1_out <= 1;
                same <= 0;
            end
        endcase
        end
    
    not not_LBP1_result (LBP1_result, LBP1_out);
    
endmodule
