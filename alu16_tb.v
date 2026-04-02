module alu2_tb;

reg [1:0] a, b;
reg en;
reg [3:0] op;
wire [3:0] alu;

alu2 DUT(a, b, en, op, alu);

initial 
begin
    $dumpfile("wave.vcd");     // waveform file
    $dumpvars(0, alu2_tb);

    $monitor("time=%0t | a=%d b=%d en=%b op=%b alu=%d",
              $time, a, b, en, op, alu);

    // Initial values
    a = 2'd3;
    b = 2'd2;
    en = 0;
    op = 4'b0000;

    #10 en = 1; op = 4'b0001; // ADD
    #10 op = 4'b0010; // SUB
    #10 op = 4'b0011; // NOT
    #10 op = 4'b0100; // MUL
    #10 op = 4'b0101; // AND
    #10 op = 4'b0110; // OR
    #10 op = 4'b0111; // NAND
    #10 op = 4'b1000; // XOR

    #10 $finish;
end

endmodule