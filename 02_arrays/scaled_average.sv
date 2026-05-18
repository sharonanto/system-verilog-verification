module tb;

  byte unsigned arr[16];
  int i;
  int sum;
  real average;
  real scale_ave;
  int int_scale_ave;

  initial begin
    sum = 0;

    // Initialize array
    for (i = 0; i < 16; i++) begin
      arr[i] = (i + 1) * 8;
      sum += arr[i];
    end

    // Compute average
    average = sum / 16.0;

    // Scale average by 1.25
    scale_ave = average * 1.25;

    // Convert to integer
    int_scale_ave = int'(scale_ave);

    // Display result
    $display("Magic number = %0d", int_scale_ave);

    $finish;
  end

endmodule
