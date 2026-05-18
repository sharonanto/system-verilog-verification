class test;

  int unsigned a, b, c;

endclass


module tb;

  test t;

  initial begin

    t = new();

    t.a = 45;
    t.b = 78;
    t.c = 90;

    #1;

    $display("Value of A : %0d", t.a);
    $display("Value of B : %0d", t.b);
    $display("Value of C : %0d", t.c);

  end

endmodule
