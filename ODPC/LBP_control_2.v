module LBP_control_2(
    in_LBP1,
    in_x,
    minmax_on,
    LBP1_result,
    same
    );
    
    input [0:3] in_LBP1;
    input [0:7] in_x;
    input minmax_on;
    
    wire LBP1_result_1;
    reg LBP1_out;
    
    output LBP1_result;
    output reg same;
   
    /*always@(in_LBP1) begin
            case (in_LBP1)
            3'b000: LBP1_out = in_x[7];
            3'b001: LBP1_out = in_x[6];
            3'b010: LBP1_out = in_x[5];
            3'b011: LBP1_out = in_x[4];
            3'b100: LBP1_out = in_x[3];
            3'b101: LBP1_out = in_x[2];
            3'b110: LBP1_out = in_x[1];
            3'b111: LBP1_out = in_x[0];
            default: LBP1_out = 1'bx;
        endcase
    end*/
    
    /*assign LBP1_out = (in_LBP1 == 3'b000 ) ? in_x[7]:
        (in_LBP1 == 3'b001 ) ? in_x[6]:
        (in_LBP1 == 3'b010 ) ? in_x[5]:
        (in_LBP1 == 3'b011 ) ? in_x[4]:
        (in_LBP1 == 3'b100 ) ? in_x[3]:
        (in_LBP1 == 3'b101 ) ? in_x[2]:
        (in_LBP1 == 3'b110 ) ? in_x[1]:
        (in_LBP1 == 3'b111 ) ? in_x[0]: 1'bx;
    
    */
    
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
                same = 1;
                LBP1_out <=1;
            end
            default begin
                same = 0;
                LBP1_out <= 1;
            end
        endcase
        end
        
    assign LBP1_result = minmax_on?LBP1_out:LBP1_result_1;
    not not_LBP1_result (LBP1_result_1, LBP1_out);
    
endmodule
