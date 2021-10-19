`timescale 1 ns / 1 ps

module rx_fifo_write (
	input logic				data_clk,		// Clock
	input logic				data_enable,	// Asynchronous reset active low
	input logic	[2:0]		data_format,

	output logic			fifo_srst,
	input logic				fifo_wr_rst_busy,
	input logic				fifo_full,
	output logic [127:0]	fifo_din,
	output reg				fifo_wr_en = 1'b0,

	input logic [127:0]		s_axis_tdata,
	input logic				s_axis_tvalid,
	output logic			s_axis_tready,
	
	output reg	[7:0]		data_write_state = 8'd50,
    output reg [119:0]		wr_data_buf = 0
	);

reg		fifo_srst_ff; //, fifo_srst_ff2;
assign	fifo_srst = fifo_srst_ff | ~data_enable; //fifo_srst_ff2;

always_ff @(posedge data_clk) begin : proc_reset
	fifo_srst_ff <= ~data_enable;
	//fifo_srst_ff2 <= fifo_srst_ff2;
end

assign	s_axis_tready = (~fifo_full) && (~fifo_srst) && data_enable && (~fifo_wr_rst_busy);

wire [63:0]		data_i_64 = s_axis_tdata[63:0];
wire [63:0]		data_q_64 = s_axis_tdata[127:64];
wire [31:0]		data_i_32 = s_axis_tdata[31:0];
wire [31:0]		data_q_32 = s_axis_tdata[95:64];
wire [15:0]		data_i_16 = s_axis_tdata[15:0];
wire [15:0]		data_q_16 = s_axis_tdata[79:64];
wire [7:0]		data_i_8 = s_axis_tdata[7:0];
wire [7:0]		data_q_8 = s_axis_tdata[71:64];
wire [63:0]		data_real_64 = s_axis_tdata[63:0];
wire [31:0]		data_real_32 = s_axis_tdata[31:0];
wire [15:0]		data_real_16 = s_axis_tdata[15:0];
wire [7:0]		data_real_8 = s_axis_tdata[7:0];

always_ff @(posedge data_clk) begin : proc_write_fifo
	if(!s_axis_tready) begin//if(fifo_wr_rst_busy || fifo_srst) begin
		fifo_wr_en <= 1'b0;
		fifo_din <= 0;
		wr_data_buf <= 0;
		case (data_format)
			3'b000: begin data_write_state <= 8'd10; end
			3'b001: begin data_write_state <= 8'd20; end
			3'b010: begin data_write_state <= 8'd30; end
			3'b011: begin data_write_state <= 8'd40; end
			3'b100: begin data_write_state <= 8'd50; end
			3'b101: begin data_write_state <= 8'd60; end
			3'b110: begin data_write_state <= 8'd70; end
			3'b111: begin data_write_state <= 8'd80; end
			//default: begin data_write_state <= 8'd50; end
		endcase
	end else begin

		case (data_write_state)

			// ***** 64-bit Complex / 128-bit Real ****
			
			8'd10: begin // 64-bit Complex / 128-bit Real
				if (s_axis_tvalid) begin
					fifo_din <= { data_q_64, data_i_64 };
					fifo_wr_en <= 1'b1;
				end else 
					fifo_wr_en <= 1'b0;
			end

			// ************ 64-bit Real ************

			8'd20: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[63:0] <= data_real_64;
					data_write_state <= 8'd21;
				end 
			end

			8'd21: begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_real_64, wr_data_buf[63:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd20;
				end
			end

			// *********** 32-bit Complex ***********

			8'd30: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[63:0] <= { data_q_32, data_i_32 };
					data_write_state <= 8'd31;
				end
			end

			8'd31 : begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_q_32, data_i_32, wr_data_buf[63:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd30;
				end
			end 

			// ************ 32-bit Real ************

			8'd40: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[31:0] <= data_real_32;
					data_write_state <= 8'd41;
				end
			end

			8'd41: begin
				if (s_axis_tvalid) begin
					wr_data_buf[63:32] <= data_real_32;
					data_write_state <= 8'd42;
				end
			end

			8'd42: begin
				if (s_axis_tvalid) begin
					wr_data_buf[95:64] <= data_real_32;
					data_write_state <= 8'd43;
				end
			end

			8'd43: begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_real_32, wr_data_buf[95:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd40;
				end
			end

			// *********** 16-bit Complex ***********

			8'd50: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[31:0] <= { data_q_16, data_i_16 };
					data_write_state <= 8'd51;
				end
			end

			8'd51: begin
				if (s_axis_tvalid) begin
					wr_data_buf[63:32] <= { data_q_16, data_i_16 };
					data_write_state <= 8'd52;
				end
			end

			8'd52: begin
				if (s_axis_tvalid) begin
					wr_data_buf[95:64] <= { data_q_16, data_i_16 };
					data_write_state <= 8'd53;
				end
			end

			8'd53: begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_q_16, data_i_16, wr_data_buf[95:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd50;
				end
			end 

			// ************ 16-bit Real ************

			60: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[15:0] <= data_real_16;
					data_write_state <= 61;
				end
			end

			61: begin
				if (s_axis_tvalid) begin
					wr_data_buf[31:16] <= data_real_16;
					data_write_state <= 62;
				end
			end

			62: begin
				if (s_axis_tvalid) begin
					wr_data_buf[47:32] <= data_real_16;
					data_write_state <= 63;
				end
			end

			63: begin
				if (s_axis_tvalid) begin
					wr_data_buf[63:48] <= data_real_16;
					data_write_state <= 64;
				end
			end

			64: begin
				if (s_axis_tvalid) begin
					wr_data_buf[79:64] <= data_real_16;
					data_write_state <= 65;
				end
			end

			65: begin
				if (s_axis_tvalid) begin
					wr_data_buf[95:80] <= data_real_16;
					data_write_state <= 66;
				end
			end

			66: begin
				if (s_axis_tvalid) begin
					wr_data_buf[111:96] <= data_real_16;
					data_write_state <= 67;
				end
			end

			67: begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_real_16, wr_data_buf[111:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 60;
				end
			end 

			// *********** 8-bit Complex ***********

			70: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[15:0] <= { data_q_8, data_i_8 };
					data_write_state <= 71;
				end
			end

			71: begin
				if (s_axis_tvalid) begin
					wr_data_buf[31:16] <= { data_q_8, data_i_8 };
					data_write_state <= 72;
				end
			end

			72: begin
				if (s_axis_tvalid) begin
					wr_data_buf[47:32] <= { data_q_8, data_i_8 };
					data_write_state <= 73;
				end
			end

			73: begin
				if (s_axis_tvalid) begin
					wr_data_buf[63:48] <= { data_q_8, data_i_8 };
					data_write_state <= 74;
				end
			end

			74: begin
				if (s_axis_tvalid) begin
					wr_data_buf[79:64] <= { data_q_8, data_i_8 };
					data_write_state <= 75;
				end
			end

			75: begin
				if (s_axis_tvalid) begin
					wr_data_buf[95:80] <= { data_q_8, data_i_8 };
					data_write_state <= 76;
				end
			end

			76: begin
				if (s_axis_tvalid) begin
					wr_data_buf[111:96] <= { data_q_8, data_i_8 };
					data_write_state <= 77;
				end
			end

			77: begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_q_8, data_i_8, wr_data_buf[111:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 70;
				end
			end 

			// ************ 8-bit Real ************

			80: begin
				fifo_wr_en <= 1'b0;
				if (s_axis_tvalid) begin
					wr_data_buf[7:0] <= data_real_8;
					data_write_state <= 81;
				end
			end

			81: begin
				if (s_axis_tvalid) begin
					wr_data_buf[15:8] <= data_real_8;
					data_write_state <= 82;
				end
			end

			82: begin
				if (s_axis_tvalid) begin
					wr_data_buf[23:16] <= data_real_8;
					data_write_state <= 83;
				end
			end

			83: begin
				if (s_axis_tvalid) begin
					wr_data_buf[31:24] <= data_real_8;
					data_write_state <= 84;
				end
			end

			84: begin
				if (s_axis_tvalid) begin
					wr_data_buf[39:32] <= data_real_8;
					data_write_state <= 85;
				end
			end

			85: begin
				if (s_axis_tvalid) begin
					wr_data_buf[47:40] <= data_real_8;
					data_write_state <= 86;
				end
			end

			86: begin
				if (s_axis_tvalid) begin
					wr_data_buf[55:48] <= data_real_8;
					data_write_state <= 87;
				end
			end

			87: begin
				if (s_axis_tvalid) begin
					wr_data_buf[63:56] <= data_real_8;
					data_write_state <= 88;
				end
			end

			88: begin
				if (s_axis_tvalid) begin
					wr_data_buf[71:64] <= data_real_8;
					data_write_state <= 89;
				end
			end

			89: begin
				if (s_axis_tvalid) begin
					wr_data_buf[79:72] <= data_real_8;
					data_write_state <= 90;
				end
			end

			90: begin
				if (s_axis_tvalid) begin
					wr_data_buf[87:80] <= data_real_8;
					data_write_state <= 91;
				end
			end

			91: begin
				if (s_axis_tvalid) begin
					wr_data_buf[95:88] <= data_real_8;
					data_write_state <= 92;
				end
			end

			92: begin
				if (s_axis_tvalid) begin
					wr_data_buf[103:96] <= data_real_8;
					data_write_state <= 93;
				end
			end

			93: begin
				if (s_axis_tvalid) begin
					wr_data_buf[111:104] <= data_real_8;
					data_write_state <= 94;
				end
			end

			94: begin
				if (s_axis_tvalid) begin
					wr_data_buf[119:112] <= data_real_8;
					data_write_state <= 95;
				end
			end

			95: begin
				if (s_axis_tvalid) begin
					fifo_din <= { data_real_8, wr_data_buf };
					fifo_wr_en <= 1'b1;
					data_write_state <= 80;
				end
			end

			default : begin 
				fifo_wr_en <= 1'b0;
				fifo_din <= 128'h5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A;
			end
		endcase
	end
end

endmodule : rx_fifo_write