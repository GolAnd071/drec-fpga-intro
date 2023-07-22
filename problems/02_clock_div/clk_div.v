module clk_div #(parameter X = 12)(
    input clk,

    output clk_out
);

assign clk_out = (cnt == $pow(2, X) - 1);

reg [X-1:0]cnt = 0;

always @(posedge clk) begin
    if (clk_out)
        cnt <= 0;
    else
        cnt <= cnt + 1;
end

endmodule
