//https://hdlbits.01xz.net/wiki/Module

module top_module ( input a, input b, output out );
    mod_a a0(.out(out), .in1(a), .in2(b));
endmodule

