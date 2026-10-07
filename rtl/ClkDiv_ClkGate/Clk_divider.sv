module clk_div #(parameter WIDTH=8)(

    input i_ref_clk,
    input i_rst_n,
    input i_clk_en,
    input [WIDTH-1:0] i_div_ratio,

    output o_div_clk
);

reg [WIDTH-1:0] count;
wire [WIDTH-1:0] high_th,low_th;
wire [WIDTH-1:0] active_th;
wire is_valid;

reg div_clk_reg;

assign high_th=i_div_ratio>>1;
assign low_th = i_div_ratio - high_th;
assign active_th = !div_clk_reg ? high_th : low_th;

assign o_div_clk = !is_valid ?i_ref_clk:div_clk_reg;


assign is_valid = i_clk_en && !((i_div_ratio == 0) || (i_div_ratio == 1));


always@(posedge i_ref_clk or negedge i_rst_n)begin
    
    if(!i_rst_n)begin
        count<='b1;
        div_clk_reg<='b0;
        
    end
    
    else begin
        if (is_valid)begin
            if(count>=active_th)begin
                div_clk_reg<=!div_clk_reg;
                count     <= 'b1;
            end
            else begin
                count<=count+1;
                end
        end
        else begin
            count<='b1;
            div_clk_reg<=0;
        end
    end
end
endmodule
