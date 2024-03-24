//https://hdlbits.01xz.net/wiki/Module_addsub

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w0;
    wire [31:0] w1;
    assign w1 = {32{sub}} ^ b;
    add16 a16_0(.a(a[15:0]), .b(w1[15:0]), .cin(sub), .sum(sum[15:0]), .cout(w0));
    add16 a16_1(.a(a[31:16]), .b(w1[31:16]), .cin(w0), .sum(sum[31:16]), .cout());
endmodule

