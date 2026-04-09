module alu_2bit (
    input [1:0] a, b,
    input [1:0] sel,
    output reg [2:0] result   // 3-bit to handle carry
);

always @(*) begin
    case(sel)
        2'b00: result = a + b;   // Addition
        2'b01: result = a - b;   // Subtraction
        2'b10: result = a & b;   // AND
        2'b11: result = a | b;   // OR
        default: result = 3'b000;
    endcase
end
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, alu_2bit_tb);
end
endmodule
