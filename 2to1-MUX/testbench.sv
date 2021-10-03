// Testbench Created by Sabbir Ahmed Sibli

module mux2to1_tb;
  
  reg i1, i2, s;
  wire f;
  
  mux2to1 mux2to1_tb(.a(i1), .b(i2), .s(s), .y(f));
  
  initial begin
  
  	// $monitor(i1,i2,s1,f);
    $dumpfile("dump.vcd");
    $dumpvars(1);
  	
    // First Case
  	i1 = 1'b1;
  	i2 = 1'b0;
    
    s = 1'b0;
    #1 $display("in1:%b, in2:%b, selector:%b, output:%b", i1, i2, s, f);
    
    #1
    s = 1'b1;
    #1 $display("in1:%b, in2:%b, selector:%b, output:%b", i1, i2, s, f);
    
    // Second Case
    i1 = 1'b0;
  	i2 = 1'b1;
    
    s = 1'b0;
    #1 $display("in1:%b, in2:%b, selector:%b, output:%b", i1, i2, s, f);
    
    #1
    s = 1'b1;
    #1 $display("in1:%b, in2:%b, selector:%b, output:%b", i1, i2, s, f);
    
  end
  
endmodule
