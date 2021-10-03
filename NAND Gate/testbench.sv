// Testbench Created by Sabbir Ahmed Sibli

module nandg_tb;
  
  reg a,b;
  wire f;
  nandg nandg_tb(.in1(a), .in2(b), .out(f));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    a=1'b0;
    b=1'b0;
    #1 $display("input1:%b, input2:%b, output:%b", a,b,f);
    
    #1
    a=1'b0;
    b=1'b1;
    #1 $display("input1:%b, input2:%b, output:%b", a,b,f);
    
    #1
    a=1'b1;
    b=1'b0;
    #1 $display("input1:%b, input2:%b, output:%b", a,b,f);
    
    #1
    a=1'b1;
    b=1'b1;
    #1 $display("input1:%b, input2:%b, output:%b", a,b,f);
    
  end
  
endmodule
