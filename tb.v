`include "sr_ff.v"

module tb;

reg clk,s,r;
wire q,qbar;

sr_ff dut(clk,s,r,q,qbar);

initial
begin

clk=0;
forever #5 clk=~clk;
end

initial 
begin

$monitor("time=%0t,s=%0b,r=%0b,q=%0b,qbar=%0b",$time,s,r,q,qbar);
#5;
s=1'b0;r=1'b0;

$monitor("time=%0t,s=%0b,r=%0b,q=%0b,qbar=%0b",$time,s,r,q,qbar);
#10;
s=1'b0;r=1'b1;


$monitor("time=%0t,s=%0b,r=%0b,q=%0b,qbar=%0b",$time,s,r,q,qbar);
#10;
s=1'b1;r=1'b0;


$monitor("time=%0t,s=%0b,r=%0b,q=%0b,qbar=%0b",$time,s,r,q,qbar);
#10;
s=1'b1;r=1'b1;

end
endmodule
