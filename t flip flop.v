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
