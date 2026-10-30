module alu (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] OP,
    output reg [4:0] alu_out
);

    always @(*) begin
        case (OP)
            3'b000: alu_out = A + B;
            3'b001: alu_out = A - B;
            3'b010: alu_out = A & B;
            3'b011: alu_out = A | B;
            3'b100: alu_out = A ^ B;
            3'b101: alu_out = (~A) & B;
            3'b110: alu_out = ~(A | B);
            3'b111: alu_out = ~A;
            default: alu_out = 5'b00000;
        endcase
    end

endmodule
