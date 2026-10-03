module comparator(A,B,eq,gt,lt);
input [1:0] A,B;
output reg eq,gt,lt;
always @(*)
begin
if(A==B) 
begin
eq=1; gt=0; lt=0; 
end
else if(A > B) 
begin
eq=0; gt=1; lt=0;
end
else
begin
eq=0; gt=0; lt=1;
end
end
endmodule
module tb_comparator();
reg [1:0] a,b;
wire eq,gt,lt;
comparator uut(a,b,eq,gt,lt);
initial 
begin 
a=2'b11; b=2'b11; //eq
#50
a=2'b10; b=2'b01; //gt
#50
a=2'b00; b=2'b11; //lt
end
endmodule
