module RX_TOP #(parameter WIDTH=8)(
  input RX_IN,
  input [5:0] Prescale,
  input PAR_EN,
  input PAR_TYP,
  input clk,rst,

  output [WIDTH-1:0] P_DATA,
  output Parity_Err,
  output Stop_Err,
  output Data_Valid
);
/////////////////////////////////////////////////
wire data_samp_en,edge_en;

wire [5:0] edge_cnt;
wire [3:0] bit_cnt;

wire par_chk_en,par_err,par_done,stp_done;

wire strt_chk_en,strt_glitch;

wire stp_chk_en, stp_err;

wire deser_en, samp_b,samp_valid;
/////////////////////////////////////////////////////

RX_FSM U7 (
.RX_IN(RX_IN),
.clk(clk),
.rst(rst),
//.edge_cnt(edge_cnt),
//.Prescale(Prescale),
.bit_cnt(bit_cnt),
.Sample_valid(samp_valid),
.par_done(par_done),
.stp_done(stp_done),
.par_err(par_err),
.strt_glitch(strt_glitch),
.stp_err(stp_err),
.par_en(PAR_EN),
.data_samp_en(data_samp_en),
.edge_en(edge_en),
.par_chk_en(par_chk_en),
.strt_chk_en(strt_chk_en),
.stp_chk_en(stp_chk_en),
.deser_en(deser_en),
.data_valid(Data_Valid)
);

stp_chk U6 (
.stp_chk_en(stp_chk_en),
.Sampled_bit(samp_b),
.clk(clk),
.rst(rst),
.stp_err(stp_err),
.stp_done(stp_done)
);


Strt_chk U5 (
.Strt_chk_en(strt_chk_en),
.Sampled_bit(samp_b),
.clk(clk),
.rst(rst),
.strt_glitch(strt_glitch)
);


Parity_chk U4 (
.Par_chk_en(par_chk_en),
.Par_typ(PAR_TYP),
.Sampled_bit(samp_b),
.clk(clk),
.rst(rst),
.par_err(par_err),
.par_done(par_done)
);


Edge_Bit_Counter U1 (
.Edge_En(edge_en),
.clk(clk),
.rst(rst),
.Par_EN(PAR_EN),
.Prescale(Prescale),
.Bit_cnt(bit_cnt),
.Edge_cnt(edge_cnt)
);

Data_sampling U2 (
.Edge_cnt(edge_cnt),
.Prescale(Prescale),
.clk(clk),
.rst(rst),
.data_samp_en(data_samp_en),
.RX_IN(RX_IN),
.Sampled_bit(samp_b),
.Sample_Valid(samp_valid)
);

DeSerializer U3 (
.Sampled_bit(samp_b),
.derser_en(deser_en),
.clk(clk),
.rst(rst),
.P_DATA(P_DATA)
);

assign Parity_Err = par_err;
assign Stop_Err   = stp_err;



endmodule

