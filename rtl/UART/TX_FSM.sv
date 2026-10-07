import uart_pkg::*;


module TX_FSM (
  
  input clk, rst,
  input Data_Valid,
  input PAR_EN,ser_done,
  
  output reg ser_en,
output mux_sel_e mux_sel,
  output reg busy 
);
//////////////////////////////////////////////
typedef enum logic [2:0]{
  IDLE=3'b000,
  START_STATE=3'b001,
  DATA_STATE=3'b011,
  PARITY_STATE=3'b010,
  STOP_STATE=3'b110
  
}state_e;

state_e current_state,next_state;
/////////////////////////////////////////////////




//////////////////////////////////////////////////////////////////////////////
always@(posedge clk or negedge rst)begin
  
  if(!rst)begin
    current_state<=IDLE;
  end
else
  current_state<=next_state;
  
end
//////////////////////////////////////////////////////////////////////////////////

always@(*)begin
  next_state=current_state;
  case(current_state)
    
    IDLE:next_state=Data_Valid?START_STATE:IDLE;
    
    START_STATE:next_state=DATA_STATE;
    
    DATA_STATE:begin
      if(ser_done)begin
        if(PAR_EN)
          next_state=PARITY_STATE;
        else
          next_state=STOP_STATE;
      end
    else
      next_state=DATA_STATE;
    end
    
    PARITY_STATE:next_state=STOP_STATE;
    
    STOP_STATE:next_state=IDLE;
    
    default:next_state = IDLE;
  endcase
  
  
end
//////////////////////////////////////////////////////////////////////////////

always@(*)begin
  ser_en='b0;
  mux_sel=MUX_IDLE;
  busy='b0;
  
  case(current_state)
    IDLE:begin
      busy='b0;
      mux_sel=MUX_IDLE;//so at mux_sel=0 tx_out =1 
    end
    
    START_STATE:begin
      mux_sel=MUX_START;//start bit
      busy='b1;
      ser_en = 1;
    end
    
    DATA_STATE:begin
      busy='b1;
      ser_en='b0;
      mux_sel=MUX_DATA; // data transmission
      
    end
    
    PARITY_STATE:begin
      busy='b1;
      mux_sel=MUX_PARITY; //parity_bit
      
    end
    
    STOP_STATE:begin
      busy='b1;
      mux_sel=MUX_STOP;//stop_bit
    end
    
    default:begin
      busy='b0;
      mux_sel=MUX_IDLE;
    end
    
  endcase
  
  
end

endmodule
