//MUX_2X1 (Behavioral Level): 
module MUX(A,B,s0,Y); 
input A,B,s0; 
output reg Y; 
always @ (*) 
begin 
if (s0==0) 
Y= A&B; 
else 
Y= A|B; 
end 
endmodule 
module tb_mux_2x1(); 
reg a,b,s0; 
wire y; 
MUX m1(a,b,s0,y); 
initial 
begin 
s0=0; a=0; b=0; 
#50 
s0=1; a=0; b=1; 
#50 
s0=0; a=1; b=0; 
#50 
s0=1; a=1; b=1; 
end 
endmodule 
