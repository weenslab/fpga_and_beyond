`timescale 1ns / 1ps

module half_adder_tb();
    localparam T = 10;
    
    reg a;
    reg b;
    wire sum;
    wire carry;
    
    half_adder half_adder_0
    (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );
    
    initial
    begin
        a = 0; b = 0;
        #T;
        a = 0; b = 1;
        #T;
        a = 1; b = 0;
        #T;
        a = 1; b = 1;
        #T;        
    end
    
endmodule
