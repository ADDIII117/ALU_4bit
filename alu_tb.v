`timescale 1ns / 1ps

module alu_tb;
    reg  [3:0] A;
    reg  [3:0] B;
    reg  [2:0] OP;
    wire [4:0] alu_out;

    alu uut (
        .A(A),
        .B(B),
        .OP(OP),
        .alu_out(alu_out)
    );

    initial begin
        A = 4'b0101;
        B = 4'b0011;

        $display("Starting ALU simulation");

        for (OP = 3'b000; OP < 3'b1000; OP = OP + 1'b1) begin
            #5;
            $display("Time=%0t | OP=%b | A=%b | B=%b | alu_out=%b",
                     $time, OP, A, B, alu_out);
        end

        $display("ALU simulation complete");
        $finish;
    end

endmodule
