module RST_SYNCH #(parameter NUM_STAGES = 3)(

    input rst,
    input clk,

    output synch_rst

);

reg [NUM_STAGES-1:0] n_synch;

assign synch_rst = n_synch[NUM_STAGES-1];

generate

    if (NUM_STAGES == 1) begin

        always @(posedge clk or negedge rst) begin
            if (!rst)
                n_synch <= 1'b0;
            else
                n_synch <= 1'b1;
        end

    end

    else begin

        always @(posedge clk or negedge rst) begin
            if (!rst)
                n_synch <= 'b0;
            else
                n_synch <= {n_synch[NUM_STAGES-2:0], 1'b1};
        end

    end

endgenerate

endmodule

