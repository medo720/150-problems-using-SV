// Code your testbench here
// or browse Examples
`include "run_tests.sv"
function bit contains_duplicate(input int arr[]);
  int dict[int];
  foreach(arr[i])begin
    if(dict.exists(arr[i]))
      return 1;
  	else
      dict[arr[i]]=1;
  end
  return 0;
endfunction

module top;
  initial begin
    run_tests();
    
  end


endmodule
