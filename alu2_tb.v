`timescale 1ns/1ps

module alu_2bit_tb;

reg [1:0] a, b;
reg [1:0] sel;
wire [2:0] result;

// Instantiate ALU
alu_2bit uut (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result)
);

initial begin
    $display("Time\t a b sel result");
    $monitor("%0t\t %b %b %b %b", $time, a, b, sel, result);

    // Test Addition
    a = 2'b01; b = 2'b01; sel = 2'b00; #10;
    a = 2'b10; b = 2'b01; sel = 2'b00; #10;

    // Test Subtraction
    a = 2'b10; b = 2'b01; sel = 2'b01; #10;
    a = 2'b01; b = 2'b10; sel = 2'b01; #10;

    // Test AND
    a = 2'b11; b = 2'b01; sel = 2'b10; #10;

    // Test OR
    a = 2'b10; b = 2'b01; sel = 2'b11; #10;

    $finish;
end

endmodule
