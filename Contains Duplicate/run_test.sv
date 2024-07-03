task run_tests;
  int arr[];  
    bit expected;
    bit result;
    int i;

    // Array of test cases
    typedef struct {
      int arr[];
      bit expected;
    } test_case_t;
    
    test_case_t test_cases[] = '{
      '{arr: '{1, 2, 3, 4, 5}, expected: 0},
      '{arr: '{1, 2, 3, 4, 1}, expected: 1},
      '{arr: '{5, 5, 5, 5, 5}, expected: 1},
      '{arr: '{3, 1, 4, 1, 5, 9, 2, 6, 5}, expected: 1},
      '{arr: '{}, expected: 0}


    };

    for (i = 0; i < test_cases.size(); i++) begin
      arr = test_cases[i].arr;
      expected = test_cases[i].expected;
      result = contains_duplicate(arr);
      if (result != expected) begin
        $display("Test case %0d failed: contains_duplicate(%p) = %0d, expected = %0d", i + 1, arr, result, expected);
      end
      else begin
        $display("Test case %0d passed", i + 1);
      end
    end

    $display("All test cases completed!");
  endtask
