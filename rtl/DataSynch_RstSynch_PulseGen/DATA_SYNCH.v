module Data_Synch #(parameter WIDTH=8,STAGES=4)(

    input [WIDTH-1:0] unsync_bus,
    input  bus_enable,
    input clk,
    input rst,

    output reg [WIDTH-1:0] sync_bus,
    output reg en_pulse
);

reg [STAGES-1:0] SYNC;
reg pulse_out;
/////////////////////////////////////////////////////////////
wire mux_en;
wire [WIDTH-1:0] mux_out;
/////////////////////////////////////////////////////////////
assign mux_en = (!pulse_out) &  SYNC[STAGES-1];

assign mux_out = mux_en?unsync_bus:sync_bus;
////////////////////////////////////////////////////////////
always@(posedge clk or negedge rst)begin

    if(!rst)begin
        sync_bus<='b0;
        SYNC<='b0;
	pulse_out<='b0;
	en_pulse<='b0;
    end

    else begin
        SYNC[STAGES-1:0]<={SYNC[STAGES-2:0],bus_enable};
        pulse_out<=SYNC[STAGES-1];
        en_pulse<=mux_en;
        sync_bus<=mux_out;
        end

end
endmodule

