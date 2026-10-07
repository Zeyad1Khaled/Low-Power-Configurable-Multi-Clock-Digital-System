module RX_FSM (

    input RX_IN,
    input clk,rst,

    //input [5:0] edge_cnt,
    //input [5:0] Prescale,
    input [3:0] bit_cnt,

    input Sample_valid,
    input par_done,
    input stp_done,
    input par_err,
    input strt_glitch,
    input stp_err,
    input par_en,


    output reg data_samp_en,
    output reg edge_en,
    output reg par_chk_en,
    output reg strt_chk_en,
    output reg stp_chk_en,
    output reg deser_en,
    output reg data_valid


);
reg data_valid_next;
reg sample_valid_d;
typedef enum logic [2:0] {
    IDLE,
    START,
    DATA,
    PARITY,
    STOP
} state_t;

state_t c_state, n_state;


always@(*)begin

    n_state=c_state;

    case (c_state)

    IDLE: n_state=RX_IN? IDLE:START;

    START:begin
        if(Sample_valid && !strt_glitch)begin
            n_state=DATA;
        end
        else if (Sample_valid && strt_glitch)
            n_state = IDLE;
        else
            n_state=START;
    end

    DATA:begin

        if(Sample_valid && bit_cnt ==4'd8)
            n_state=par_en?PARITY:STOP;

        else
            n_state=DATA;

    end

    PARITY:begin
        if(par_done)
            n_state=STOP;

        else
            n_state=PARITY;
    end

    STOP:begin
        if(sample_valid_d && stp_done)
            n_state=IDLE;
        else
            n_state=STOP;

    end
    default:begin
        n_state=IDLE;
    end


    endcase
end









always@(*)begin

    data_samp_en='b0;
    edge_en='b0;
    par_chk_en='b0;
    strt_chk_en='b0;
    stp_chk_en='b0;
    deser_en='b0;
    data_valid_next='b0;

    case (c_state)

    //IDLE:

    START:begin
        edge_en='b1;
        data_samp_en='b1;
        strt_chk_en=Sample_valid;

    end

    DATA:begin
        edge_en='b1;
        data_samp_en='b1;
        deser_en=Sample_valid;
        par_chk_en=Sample_valid && par_en;

    end

    PARITY:begin
        edge_en='b1;
        data_samp_en='b1;
        par_chk_en=Sample_valid;
    end

    STOP:begin
        edge_en='b1;
        data_samp_en='b1;
        stp_chk_en=Sample_valid;
        data_valid_next=sample_valid_d && stp_done && !stp_err && (par_en ? !par_err :1'b1) ;
    end
    default:begin
    end




    endcase
end




always@(posedge clk or negedge rst)begin

  if(!rst)
    sample_valid_d<=0;
  else
	sample_valid_d<=Sample_valid;


end






always@(posedge clk or negedge rst)begin

    if(!rst)begin
        c_state<=IDLE;
        data_valid<='b0;
    end

    else begin
        c_state<=n_state;
        data_valid<=data_valid_next;
        end

end



endmodule
