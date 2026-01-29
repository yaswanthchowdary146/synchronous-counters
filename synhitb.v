`include"synchi.v"
endmodule*/
module tb;
reg clk, rst, t;
wire [2:0] q;

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

counter c(t, clk, rst, q);

initial begin
    $monitor("time=%0t | clk=%b | rst=%b | t=%b | q=%b",
              $time, clk, rst, t, q);

    t   = 1'b1;
    rst = 1'b1;      // assert reset

    #12 rst = 1'b0;  // deassert reset safely (away from clock edge)

    #200;
    $finish;
end
endmodule


