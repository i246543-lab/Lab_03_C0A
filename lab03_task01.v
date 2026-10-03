module half_adder(A,B,sum,carry);
input A,B;
output sum,carry;
xor(sum,A,B);
and(carry,A,B);
endmodule
module full_adder(a,b,CIN,SUM,CARRY);
input a,b,CIN;
output SUM,CARRY;
wire t1,t2,t3;
half_adder ha1(a,b,t1,t2);
half_adder ha2(t1,CIN,SUM,t3);
or o1(CARRY,t2,t3);
endmodule
module four_bitAdder(A,B,S,cout);
input [3:0] A,B;
output [3:0] S;
output cout;
wire t1,t2,t3;
half_adder u1(A[0],B[0],S[0],t1);
full_adder u2(A[1],B[1],t1,S[1],t2);
full_adder u3(A[2],B[2],t2,S[2],t3);
full_adder u4(A[3],B[3],t3,S[3],cout);
endmodule
module tb_fourBitadder();
reg [3:0] x,y;
wire [3:0] sum;
wire cout;
four_bitAdder uut(x,y,sum,cout);
initial
begin
x=4'b1001; y=4'b1010; //5+10
#50
x=4'b0000; y=4'b1001; //0+9
#50
x=4'b1111; y=4'b0010; //15+2
#50
x=4'b0110; y=4'b0001; //6+1
end
endmodule
