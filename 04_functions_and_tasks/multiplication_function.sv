class test;

  int a, b;

  // Function for multiplication
  function int mul();
    return a * b;
  endfunction

endclass


module tb;

  test m;

  int result;
  int expected_result;

  initial begin

    m = new();

    m.a = 2;
    m.b = 3;

    expected_result = 6;

    result = m.mul();

    if (result == expected_result)
      $display("Test Passed");
    else
      $display("Test Failed");

  end

endmodule
