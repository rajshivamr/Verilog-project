module sr_ff(clk,s,r,q,qbar);

input clk,s,r;
output q,qbar;
reg q;

assign qbar=~q;
initial
begin
q=1'b0;
end

always @(posedge clk)

begin

case({s,r})

   2'b00 : q=q;
   2'b01 : q=1'b0;
   2'b10 : q=1'b1;
   2'b11 : q=1'bx;
endcase
end
endmodule
