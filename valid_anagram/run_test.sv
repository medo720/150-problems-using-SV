task run_tests;
    string s, t;
    bit expected;
    bit result;
    int i;

    // Array of test cases
    typedef struct {
      string s;
      string t;
      bit expected;
    } test_case_t;
    
    test_case_t test_cases[] = '{
      '{s: "listen", t: "silent", expected: 1},
      '{s: "triangle", t: "integral", expected: 1},
      '{s: "apple", t: "papel", expected: 1},
      '{s: "rat", t: "car", expected: 0},
      '{s: "hello", t: "billion", expected: 0},
      '{s: "abcd", t: "dcba", expected: 1},
      '{s: "a", t: "a", expected: 1},
      '{s: "a", t: "b", expected: 0},
      '{s: "", t: "", expected: 1},
      '{s: "aabbcc", t: "abcabc", expected: 1},
      '{s: "anagram", t: "nagaram", expected: 1},
      '{s: "cinema", t: "iceman", expected: 1},
      '{s: "fluster", t: "restful", expected: 1},
      '{s: "elbow", t: "below", expected: 1},
      '{s: "dusty", t: "study", expected: 1},
      '{s: "night", t: "thing", expected: 1},
      '{s: "evil", t: "vile", expected: 1},
      '{s: "conversation", t: "voicesranton", expected: 1},
      '{s: "astronomer", t: "moonstarrer", expected: 0},
      '{s: "schoolmaster", t: "theclassroom", expected: 1},
      '{s: "aabbccdd", t: "abcdabcd", expected: 1},
      '{s: "aabbccdde", t: "abcdabcde", expected: 1},
      '{s: "software", t: "swearoft", expected: 1},
      '{s: "book", t: "bkoo", expected: 1},
      '{s: "anagram", t: "margana", expected: 1}
    };

    for (i = 0; i < test_cases.size(); i++) begin
      s = test_cases[i].s;
      t = test_cases[i].t;
      expected = test_cases[i].expected;
      result = is_anagram(s, t);
      if (result != expected) begin
        $display("Test case %0d failed: is_anagram(%s, %s) = %0d, expected = %0d", i + 1, s, t, result, expected);
      end
      else begin
        $display("Test case %0d passed", i + 1);
      end
    end

    $display("All test cases completed!");
  endtask
