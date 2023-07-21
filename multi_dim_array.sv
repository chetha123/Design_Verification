// Code your testbench here
// or browse Examples
class multi_dim_array;
  
  rand bit [3:0] arr[4][4];
  
  
  constraint c { foreach(arr[i,j] )
    if(i>j)
      arr[i][j]==0;}
  
 
  
  
  
endclass


module tb;
  multi_dim_array ma;
  
  initial begin
    
    ma=new();
           
           ma.randomize();
           $display("%p",ma.arr);
    end
  
endmodule
