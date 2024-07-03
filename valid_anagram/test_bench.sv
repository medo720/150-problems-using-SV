// Code your testbench here
// or browse Examples
`include "run_tests.sv"
 function bit is_anagram(input string s,input string t);
  automatic byte s_d[int];
  automatic byte t_d[int];
  if(s.len!=t.len)
    return 0;

  foreach(s[i])begin
    s_d[s[i]]++;
    t_d[t[i]]++;
  end
   //$display("%p,%p",s_d,t_d);
  foreach(s_d[i])begin
    if(s_d[i]!=t_d[i])
      return 0;
  end
  return 1;
    
  
endfunction


module top;
  initial begin
    run_tests();
    //$display(is_anagram("astronomer","moonstarrer"));
  end


endmodule
