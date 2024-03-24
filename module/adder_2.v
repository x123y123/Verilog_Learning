//https://hdlbits.01xz.net/wiki/Module_cseladd

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1;
    wire [15:0] w2, w3;
    add16 a16_0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(w1));
    add16 a16_1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(w2), .cout());
    add16 a16_2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(w3), .cout());

    always @(*) begin
        case(w1)
            1'b0: sum[31:16] = w2;
            1'b1: sum[31:16] = w3;
        endcase
    end

endmodule
