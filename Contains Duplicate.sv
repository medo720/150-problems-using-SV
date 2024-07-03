function bit cont(input int arr[5]);
  int dict[int];
  foreach(arr[i])begin
    if(dict.exists(arr[i]))
      cont =1;
  	else
      dict[arr[i]]=1;
  end
  cont =0;
endfunction

module top;
  int arr[5];
  initial begin
    arr = '{1,2,3,5,4};
    $display(cont(arr));
  end
endmodule
