// Testbench Created by Sabbir Ahmed Sibli

module myxor_tb;
  reg a, b;
  wire f;
  
  myxor myxor_tb(.in1(a), .in2(b), .out(f));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    // $monitor(a,b,f);
    
    a = 1'b0;
    b = 1'b0;
    #1 $display("in1:%b, in2:%b, output:%b", a, b, f);
    
    #1
    a = 1'b0;
    b = 1'b1;
    #1 $display("in1:%b, in2:%b, output:%b", a, b, f);
    
    #1
    a = 1'b1;
    b = 1'b0;
    #1 $display("in1:%b, in2:%b, output:%b", a, b, f);
    
    #1
    a = 1'b1;
    b = 1'b1;
    #1 $display("in1:%b, in2:%b, output:%b", a, b, f);
    
  end
    
endmodule
