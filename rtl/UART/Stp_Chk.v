module stp_chk (

    input stp_chk_en,
    input Sampled_bit,
    input clk,rst,

    output reg stp_err,
    output reg stp_done

);

always@(posedge clk or negedge rst)begin

    if(!rst)begin
        stp_err<='b0;
	stp_done<='b0;
    end

    else begin

        if (stp_chk_en)begin

            stp_err<=~Sampled_bit;
	    stp_done<=1'b1;

        end

        else begin
            stp_err<='b0;
	    stp_done<='b0;
	end
    end
end
endmodule

