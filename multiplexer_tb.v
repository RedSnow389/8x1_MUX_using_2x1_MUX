`timescale 1ns/1ps
module test();
 reg [7:0] i;
 reg a,b,c;
 wire f;
 eight2oneMUX uut (.i0(i[0]), .i1(i[1]), .i2(i[2]), .i3(i[3]), .i4(i[4]), .i5(i[5]), .i6(i[6]), .i7(i[7]), .sel1(a), .sel2(b), .sel3(c), .out(f));
 initial
 begin
    i[0] = 0;
    i[1] = 0;
    i[2] = 0;
    i[3] = 0;
    i[4] = 0;
    i[5] = 0;
    i[6] = 0;
    i[7] = 0;
    a = 0;
    b = 0;
    c = 0;
        $monitor("s : %b %b %b , i : %d :: output = %b", a, b, c, i, f);
    // Waveform generation
        $dumpfile("multiplexer_tb.vcd");  // Waveform file
        $dumpvars(0, test);         // signals to plot (everything)

        // We finish simulation at t=100
        #20480 $finish;
 end
always
    #80 i = i + 1;
always
    #10 a = ~a;
always
    #20 b = ~b;
always
    #40 c = ~c;
endmodule