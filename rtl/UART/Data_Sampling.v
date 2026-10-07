module Data_sampling(

    input [5:0] Edge_cnt,
    input [5:0] Prescale,
    input clk,rst,
    input data_samp_en,
    input RX_IN,

    output reg Sampled_bit,
    output reg Sample_Valid

);
reg s0,s1;
wire [5:0] half_edge;
assign half_edge = Prescale>>1;

always@(posedge clk or negedge rst)begin

    if(!rst)begin
        Sampled_bit<='b0;
        Sample_Valid<='b0;
        s0<='b0;
        s1<='b0;
    end

    ///////////////////////////////////////////////////
    else begin

        if (data_samp_en) begin

            Sample_Valid <= 1'b0;
            if(Edge_cnt==half_edge-1)begin
                s0<=RX_IN;
            end
            ////////////////////////////////////////////////////////
            else if(Edge_cnt==half_edge)begin
                s1<=RX_IN;
            end
            /////////////////////////////////////////////////////////////////
            else if(Edge_cnt==half_edge+1)begin
                        if(s0==s1)begin
                        Sampled_bit<=s0;
                        Sample_Valid<='b1;
                        end
                    else if (s1 == RX_IN)begin
                        Sampled_bit<=s1;
                        Sample_Valid<='b1;
                    end

                    else if (s0 == RX_IN)begin
                        Sampled_bit<=s0;
                        Sample_Valid<='b1;
                    end
                end

    end


            else begin
                Sampled_bit<='b0;
                Sample_Valid<='b0;
                s0<='b0;
                s1<='b0;
            end


end
end
endmodule

