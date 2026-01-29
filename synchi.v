module tff (
    input  t, clk, rst,
    output reg q
);

always @(posedge clk) begin
	
    if (rst==0)
	    if(t==0)
        q <= q;
    else 
        q <= ~q;
	else
		q<=0;

end
endmodule


module counter(input t,clk,rst,output [2:0]q);
wire w1;
tff f1(.t(t),.clk(clk),.rst(rst),.q(q[0]));
tff f2(.t(q[0]),.clk(clk),.rst(rst),.q(q[1]));
and  a1(w1,q[0],q[1]);
tff f3(.t(w1),.clk(clk),.rst(rst),.q(q[2]));
endmodule
