module out_reg(
    msb_result,
    same,
    reset,
    result
    );
    
    input msb_result;
    input same;
    input reset;
    
    reg [0:2] memory;
    
    output reg result;
    
    always@(posedge reset)begin
        memory[2] <= msb_result;
        
        case (memory)
        3'b100: result <= 0;
        3'b101: result <= 0;
        3'b110: result <= 1;
        3'b111: result <= 1;
        3'b000: result <= 0;
        3'b001: result <= 1;
        default result <= 0;
        endcase
    end
    
    always@(negedge reset)begin
        memory[0] <= same;
        memory[1] <= msb_result;
    end
    
endmodule
