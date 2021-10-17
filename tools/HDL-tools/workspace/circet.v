
module counter (out, clk, mode);
    input clk, mode;
    output [7:0] out;

    reg [7:0] counter_reg;
    assign out = counter_reg;

    always @(posedge clk) begin
        if(mode) begin
            counter_reg = counter_reg + 1;
        end else begin
            counter_reg = counter_reg - 1;
        end        
    end

endmodule
