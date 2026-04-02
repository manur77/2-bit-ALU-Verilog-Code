module alu2 (
    input [1:0] a, b,
    input en,
    input [3:0] op,
    output reg [3:0] alu
);

always @(*) 
begin
    if (en)
    begin
        case (op)
            4'b0001: alu = a + b;        // ADD
            4'b0010: alu = a - b;        // SUB
            4'b0011: alu = ~a;           // NOT
            4'b0100: alu = a * b;        // MUL
            4'b0101: alu = a & b;        // AND
            4'b0110: alu = a | b;        // OR
            4'b0111: alu = ~(a & b);     // NAND
            4'b1000: alu = a ^ b;        // XOR
            default: alu = 4'b0000;
        endcase
    end
    else
        alu = 4'b0000;
end

endmodule