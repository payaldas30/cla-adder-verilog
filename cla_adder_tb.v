`timescale 1ns/1ps
`define DELAY #10

module cla_adder_tb();
parameter DATA_WID = 16;

reg carry_in;
reg [DATA_WID-1:0] in1;
reg [DATA_WID-1:0] in2;
wire [DATA_WID-1:0] sum;
wire carry_out;

// Instantiate DUT
cla_adder cla1 (
    .sum(sum),
    .carry_out(carry_out),
    .in1(in1),
    .in2(in2),
    .carry_in(carry_in)
);

initial begin
    // Initialize
    in1 = 16'd0;
    in2 = 16'd0;
    carry_in = 1'b0;

    `DELAY in1 = 16'd10;
    `DELAY in1 = 16'd20;
    `DELAY in2 = 16'd10;
    `DELAY in2 = 16'd20;
    `DELAY in2 = 16'd0;
    `DELAY in1 = 16'hFFFF; in2 = 16'hFFFF;
    `DELAY in1 = 16'h7FFF; in2 = 16'hFFFF;
    `DELAY in1 = 16'hBFFF; in2 = 16'hFFFF;

    `DELAY $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t | in1=%h | in2=%h | carry_in=%b | sum=%h | carry_out=%b",
              $time, in1, in2, carry_in, sum, carry_out);
end

// Waveform dump
initial begin
    $dumpfile("cla_adder.vcd");
    $dumpvars(0, cla_adder_tb);
end

endmodule
