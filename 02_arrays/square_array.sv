module square_array;

  int unsigned arr[10];

  initial begin

    // Store square values
    for (int i = 0; i < 10; i++) begin
      arr[i] = i * i;
    end

    // Display array values
    $display("Index\tValue");

    for (int i = 0; i < 10; i++) begin
      $display("%0d\t%0d", i, arr[i]);
    end

  end

endmodule
