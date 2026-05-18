module tb();

reg clk;
reg reset_n;
integer count;

// Clock generation
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

// Reset generation
initial begin
    reset_n = 0;
    repeat (5) @(posedge clk);
    reset_n = 1;
end

always @(posedge clk) begin
    if(!reset_n)
        count <= 0;
    else
        count <= count + 1;
end

initial begin
    count = 0;
    repeat (20) @(posedge clk);
    $display("Magic number = %0d", count);
end

endmodule
