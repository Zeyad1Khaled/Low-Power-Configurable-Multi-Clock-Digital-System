module SYS_CTRL #(parameter WIDTH=8,ALU_OUT_WIDTH=2*WIDTH,ADDR=4) (

    input clk,rst,
    input OUT_VALID,

    input [ALU_OUT_WIDTH-1:0] ALU_OUT,
    input [WIDTH-1:0] RdData,RX_P_DATA,

    input RdData_Valid,RX_D_VLD,
    input fifo_full,

    output reg [3:0] ALU_FUN,
    output reg EN,CLK_EN,
    output reg [ADDR-1:0] Address,
    output reg WrEn,RdEn,
    output reg [WIDTH-1:0] WrData,
    output reg [WIDTH-1:0] TX_P_DATA,
    output reg TX_D_VLD,clk_div_en


);
reg [ADDR-1:0] wr_addr;


typedef enum logic [3:0]{

    IDLE,
    ALU_RX_OP_A,
    ALU_RX_OP_B,
    ALU_RX_FUNC,
    ALU_TX_LSB,
    ALU_TX_MSB,


    WR_ADDR,
    WR_DATA,

    RD_ADDR,
    RD_DATA

}state_e;

state_e current_state,next_state;
reg [WIDTH-1:0] frame2;
reg cfg_locked;
reg reg2_cfg,reg3_cfg;

always@(*)begin

    next_state=current_state;
    case (current_state)

    IDLE:begin
        if(RX_D_VLD)begin
        case(RX_P_DATA)
            'hAA:next_state=WR_ADDR;
            'hBB:next_state=RD_ADDR;
            'hCC:next_state=ALU_RX_OP_A;
            'hDD:next_state=ALU_RX_FUNC;
            default:next_state=IDLE;

        endcase
        end
    end

    ALU_RX_OP_A:next_state=RX_D_VLD?ALU_RX_OP_B:current_state;
    ALU_RX_OP_B:next_state=RX_D_VLD?ALU_RX_FUNC:current_state;
    ALU_RX_FUNC:next_state=RX_D_VLD?ALU_TX_LSB:current_state;
    ALU_TX_LSB:next_state=(OUT_VALID && !fifo_full)?ALU_TX_MSB:current_state;
    ALU_TX_MSB:next_state= (!fifo_full) ? IDLE : current_state;

    WR_ADDR:next_state=RX_D_VLD?WR_DATA:current_state;
    WR_DATA:next_state=RX_D_VLD?IDLE:current_state;

    RD_ADDR:next_state=RX_D_VLD?RD_DATA:current_state;
    RD_DATA:next_state= (RdData_Valid && !fifo_full) ?IDLE:current_state;

    default:next_state=IDLE;
    endcase

end

always@(*)begin

    ALU_FUN=0;
    EN=0;
    CLK_EN=0;
    Address=0;
    WrEn=0;
    RdEn=0;
    WrData=0;
    TX_P_DATA=0;
    TX_D_VLD=0;
    clk_div_en=1;
    case (current_state)
/////////////////////////////////////////////
    IDLE:begin
        end

    ALU_RX_OP_A:begin
        if(RX_D_VLD)begin
            WrEn=1;
            Address=0;
            WrData=RX_P_DATA;
    end
    end
    ALU_RX_OP_B:begin
        if(RX_D_VLD)begin
            WrEn=1;
            Address=1;
            WrData=RX_P_DATA;
        end
    end

    ALU_RX_FUNC:begin
        if(RX_D_VLD)begin
            EN=1;
            CLK_EN=1;
            ALU_FUN=RX_P_DATA[3:0];
        end
        end

    ALU_TX_LSB:begin
        if(OUT_VALID && !fifo_full)begin
            TX_P_DATA = ALU_OUT[WIDTH-1:0];
            TX_D_VLD  = 1;
        end
    end
    ALU_TX_MSB:begin
        if(!fifo_full)begin
            TX_P_DATA = frame2;
            TX_D_VLD  = 1;
        end
    end
//////////////////////////////////////////////////////////////////////

    WR_ADDR:begin
    end

      WR_DATA: begin
      if (RX_D_VLD) begin
          Address = wr_addr;
          WrData  = RX_P_DATA;

          // Generic write command may not overwrite ALU operands.
           if (wr_addr >= 4)
              WrEn = 1'b1;

          else if ((wr_addr ==2 || wr_addr==3) && !cfg_locked)
             WrEn = 1'b1;

      end
  end



    RD_ADDR:begin
        if (RX_D_VLD) begin
          Address = RX_P_DATA[ADDR-1:0];
          RdEn    = 1'b1;
      end
    end

    RD_DATA:begin
        if (RdData_Valid && !fifo_full) begin
          TX_P_DATA = RdData;
          TX_D_VLD  = 1'b1;
      end

    end
    default:begin
    end
    endcase
    end
///////////////////////////////////////////////////////////////////////////


always@(posedge clk or negedge rst)begin

    if(!rst)begin
        current_state <= IDLE;

    end
    else begin
        current_state<=next_state;
    end

end

always @(posedge clk or negedge rst) begin
      if (!rst)
          wr_addr <= '0;
      else if (current_state == WR_ADDR && RX_D_VLD)
          wr_addr <= RX_P_DATA[ADDR-1:0];
  end


 always @(posedge clk or negedge rst) begin
      if (!rst)
          frame2 <= '0;
      else if (current_state == ALU_TX_LSB && OUT_VALID)
          frame2 <= ALU_OUT[ALU_OUT_WIDTH-1:WIDTH];
  end

always@(posedge clk or negedge rst)begin
    if(!rst)begin
        cfg_locked<='b0;
        reg2_cfg<='b0;
        reg3_cfg<='b0;
    end
    else if (current_state== WR_DATA && RX_D_VLD && WrEn) begin
        if(wr_addr == 2)
            reg2_cfg<='b1;
        if (wr_addr == 3)
            reg3_cfg<='b1;

        if ((reg2_cfg || (wr_addr == 2)) &&
              (reg3_cfg || (wr_addr == 3)))
              cfg_locked <= 1'b1;

    end
end

endmodule
