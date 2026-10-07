module Edge_Bit_Counter (

    input Edge_En,
    input clk,rst,
    input Par_EN,
    input [5:0] Prescale,

    output reg [3:0] Bit_cnt,
    output reg [5:0] Edge_cnt

);

always@(posedge clk or negedge rst)begin

    if(!rst)begin
    Bit_cnt<='b0;
    Edge_cnt<='b0;
    end

    else if (Edge_En)begin

        if(Par_EN)begin
            if(Bit_cnt < 11)begin

                if(Edge_cnt<Prescale-1)begin

                    Edge_cnt<=Edge_cnt+1;

                end

                else begin

                Edge_cnt<='b0;
                Bit_cnt<=Bit_cnt+1;

                end

            end

            else begin
                Bit_cnt<='b0;
                Edge_cnt<='b0;

            end




        end//////////////////////////////




        else if(!Par_EN)begin
            if(Bit_cnt <10)begin

                if(Edge_cnt<Prescale-1)begin

                    Edge_cnt<=Edge_cnt+1;

                end

                else begin

                Edge_cnt<='b0;
                Bit_cnt<=Bit_cnt+1;

                end

            end

            else begin
                Bit_cnt<='b0;
                Edge_cnt<='b0;

            end




        end//////////////////////////////





    end
    
    else begin
        Bit_cnt<='b0;
        Edge_cnt<='b0;
    end







end
endmodule
