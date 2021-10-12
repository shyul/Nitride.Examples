`timescale 1 ns / 1 ps

module rx_fifo_axis (

	input logic					aresetn,	// Asynchronous reset active low
	input logic					aclk,		// Clock

	input logic					rx_enable,
	input logic	[2:0]			data_format,
	output logic				data_ready,

	input logic					data_clk, data_valid,
	input logic	[127:0]			data_in,

	output logic [127:0]		m_axis_rx_tdata,
	output logic				m_axis_rx_tvalid,
	input logic					m_axis_rx_tready,

	output logic				fifo_srst,
	input logic					fifo_prog_full,

	input logic					fifo_rd_rst_busy,
	output logic				fifo_rd_clk,
	input logic	[127:0]			fifo_rd_data,
	output reg					fifo_rd_en,
	input logic					fifo_rd_empty,
	input logic					fifo_rd_valid,

	input logic					fifo_wr_rst_busy,
	output logic				fifo_wr_clk,
	output reg [127:0]			fifo_wr_data,
	output reg					fifo_wr_en,
	input logic					fifo_wr_full,

	output reg [7:0]			ila_data_write_state, // = 0;
	output reg [119:0]			ila_wr_data_buf // = 0;
);

assign	fifo_rd_clk = aclk;
assign	fifo_wr_clk = data_in;

assign	m_axis_rx_tdata = fifo_rd_data;
assign	m_axis_rx_tvalid = fifo_rd_valid;

reg		fifo_prog_full_ff, fifo_prog_full_ff2;
assign	data_ready = fifo_prog_full_ff & fifo_prog_full_ff2;

always_ff @(posedge fifo_rd_clk or negedge aresetn) begin : proc_read_fifo
	if(~aresetn) begin
		fifo_rd_en <= 0;
		fifo_prog_full_ff <= 0;
		fifo_prog_full_ff2 <= 0;
	end else begin
		fifo_rd_en <= m_axis_rx_tready & (~fifo_rd_empty) & (~fifo_rd_rst_busy);
		fifo_prog_full_ff <= fifo_prog_full;
		fifo_prog_full_ff2 <= fifo_prog_full_ff;
	end
end

reg		fifo_wr_en_ff, fifo_wr_en_ff2;
wire	fifo_write_active = fifo_wr_en_ff & fifo_wr_en_ff2;
assign	fifo_srst = ~(aresetn & fifo_write_active);

always_ff @(posedge fifo_wr_clk or negedge aresetn) begin : proc_write_active
	if(~aresetn) begin
		fifo_wr_en_ff <= 0;
		fifo_wr_en_ff2 <= 0;
	end else begin
		fifo_wr_en_ff <= rx_enable;
		fifo_wr_en_ff2 <= fifo_wr_en_ff;
	end
end

wire [63:0]		data_i_64 = data_in[63:0];
wire [63:0]		data_q_64 = data_in[127:64];
wire [31:0]		data_i_32 = data_in[31:0];
wire [31:0]		data_q_32 = data_in[95:64];
wire [15:0]		data_i_16 = data_in[15:0];
wire [15:0]		data_q_16 = data_in[79:64];
wire [7:0]		data_i_8 = data_in[7:0];
wire [7:0]		data_q_8 = data_in[71:64];
wire [63:0]		data_real_64 = data_in[63:0];
wire [31:0]		data_real_32 = data_in[31:0];
wire [15:0]		data_real_16 = data_in[15:0];
wire [7:0]		data_real_8 = data_in[7:0];

reg	[7:0]		data_write_state = 8'd50;
reg [119:0]		wr_data_buf = 0;

assign	ila_data_write_state = data_write_state;
assign	ila_wr_data_buf = wr_data_buf;

always_ff @(posedge data_clk) begin : proc_write_fifo
	if(~fifo_write_active || fifo_wr_rst_busy || fifo_srst) begin
		fifo_wr_en <= 1'b0;
		fifo_wr_data <= 0;
		wr_data_buf <= 0;
		case (data_format)
			3'h0: begin data_write_state <= 8'd10; end
			3'h1: begin data_write_state <= 8'd20; end
			3'h2: begin data_write_state <= 8'd30; end
			3'h3: begin data_write_state <= 8'd40; end
			3'b100: begin data_write_state <= 8'd50; end
			3'h5: begin data_write_state <= 8'd60; end
			3'h6: begin data_write_state <= 8'd70; end
			3'h7: begin data_write_state <= 8'd80; end
			default: begin data_write_state <= 8'd50; end
		endcase
	end else begin

		case (data_write_state)

			// ***** 64-bit Complex / 128-bit Real ****
			
			8'd10: begin // 64-bit Complex / 128-bit Real
				if (data_valid) begin
					fifo_wr_data <= { data_q_64, data_i_64 };
					fifo_wr_en <= 1'b1;
				end else 
					fifo_wr_en <= 1'b0;
			end

			// ************ 64-bit Real ************

			8'd20: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[63:0] <= data_real_64;
					data_write_state <= 8'd21;
				end 
			end

			8'd21: begin
				if (data_valid) begin
					fifo_wr_data <= { data_real_64, wr_data_buf[63:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd20;
				end
			end

			// *********** 32-bit Complex ***********

			8'd30: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[63:0] <= { data_q_32, data_i_32 };
					data_write_state <= 8'd31;
				end
			end

			8'd31 : begin
				if (data_valid) begin
					fifo_wr_data <= { data_q_32, data_i_32, wr_data_buf[63:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd30;
				end
			end 

			// ************ 32-bit Real ************

			8'd40: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[31:0] <= data_real_32;
					data_write_state <= 8'd41;
				end
			end

			8'd41: begin
				if (data_valid) begin
					wr_data_buf[63:32] <= data_real_32;
					data_write_state <= 8'd42;
				end
			end

			8'd42: begin
				if (data_valid) begin
					wr_data_buf[95:64] <= data_real_32;
					data_write_state <= 8'd43;
				end
			end

			8'd43: begin
				if (data_valid) begin
					fifo_wr_data <= { data_real_32, wr_data_buf[95:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd40;
				end
			end

			// *********** 16-bit Complex ***********

			8'd50: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[31:0] <= { data_q_16, data_i_16 };
					data_write_state <= 8'd51;
				end
			end

			8'd51: begin
				if (data_valid) begin
					wr_data_buf[63:32] <= { data_q_16, data_i_16 };
					data_write_state <= 8'd52;
				end
			end

			8'd52: begin
				if (data_valid) begin
					wr_data_buf[95:64] <= { data_q_16, data_i_16 };
					data_write_state <= 8'd53;
				end
			end

			8'd53: begin
				if (data_valid) begin
					fifo_wr_data <= { data_q_16, data_i_16, wr_data_buf[95:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 8'd50;
				end
			end 

			// ************ 16-bit Real ************

			60: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[15:0] <= data_real_16;
					data_write_state <= 61;
				end
			end

			61: begin
				if (data_valid) begin
					wr_data_buf[31:16] <= data_real_16;
					data_write_state <= 62;
				end
			end

			62: begin
				if (data_valid) begin
					wr_data_buf[47:32] <= data_real_16;
					data_write_state <= 63;
				end
			end

			63: begin
				if (data_valid) begin
					wr_data_buf[63:48] <= data_real_16;
					data_write_state <= 64;
				end
			end

			64: begin
				if (data_valid) begin
					wr_data_buf[79:64] <= data_real_16;
					data_write_state <= 65;
				end
			end

			65: begin
				if (data_valid) begin
					wr_data_buf[95:80] <= data_real_16;
					data_write_state <= 66;
				end
			end

			66: begin
				if (data_valid) begin
					wr_data_buf[111:96] <= data_real_16;
					data_write_state <= 67;
				end
			end

			67: begin
				if (data_valid) begin
					fifo_wr_data <= { data_real_16, wr_data_buf[111:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 60;
				end
			end 

			// *********** 8-bit Complex ***********

			70: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[15:0] <= { data_q_8, data_i_8 };
					data_write_state <= 71;
				end
			end

			71: begin
				if (data_valid) begin
					wr_data_buf[31:16] <= { data_q_8, data_i_8 };
					data_write_state <= 72;
				end
			end

			72: begin
				if (data_valid) begin
					wr_data_buf[47:32] <= { data_q_8, data_i_8 };
					data_write_state <= 73;
				end
			end

			73: begin
				if (data_valid) begin
					wr_data_buf[63:48] <= { data_q_8, data_i_8 };
					data_write_state <= 74;
				end
			end

			74: begin
				if (data_valid) begin
					wr_data_buf[79:64] <= { data_q_8, data_i_8 };
					data_write_state <= 75;
				end
			end

			75: begin
				if (data_valid) begin
					wr_data_buf[95:80] <= { data_q_8, data_i_8 };
					data_write_state <= 76;
				end
			end

			76: begin
				if (data_valid) begin
					wr_data_buf[111:96] <= { data_q_8, data_i_8 };
					data_write_state <= 77;
				end
			end

			77: begin
				if (data_valid) begin
					fifo_wr_data <= { data_q_8, data_i_8, wr_data_buf[111:0] };
					fifo_wr_en <= 1'b1;
					data_write_state <= 70;
				end
			end 

			// ************ 8-bit Real ************

			80: begin
				fifo_wr_en <= 1'b0;
				if (data_valid) begin
					wr_data_buf[7:0] <= data_real_8;
					data_write_state <= 81;
				end
			end

			81: begin
				if (data_valid) begin
					wr_data_buf[15:8] <= data_real_8;
					data_write_state <= 82;
				end
			end

			82: begin
				if (data_valid) begin
					wr_data_buf[23:16] <= data_real_8;
					data_write_state <= 83;
				end
			end

			83: begin
				if (data_valid) begin
					wr_data_buf[31:24] <= data_real_8;
					data_write_state <= 84;
				end
			end

			84: begin
				if (data_valid) begin
					wr_data_buf[39:32] <= data_real_8;
					data_write_state <= 85;
				end
			end

			85: begin
				if (data_valid) begin
					wr_data_buf[47:40] <= data_real_8;
					data_write_state <= 86;
				end
			end

			86: begin
				if (data_valid) begin
					wr_data_buf[55:48] <= data_real_8;
					data_write_state <= 87;
				end
			end

			87: begin
				if (data_valid) begin
					wr_data_buf[63:56] <= data_real_8;
					data_write_state <= 88;
				end
			end

			88: begin
				if (data_valid) begin
					wr_data_buf[71:64] <= data_real_8;
					data_write_state <= 89;
				end
			end

			89: begin
				if (data_valid) begin
					wr_data_buf[79:72] <= data_real_8;
					data_write_state <= 90;
				end
			end

			90: begin
				if (data_valid) begin
					wr_data_buf[87:80] <= data_real_8;
					data_write_state <= 91;
				end
			end

			91: begin
				if (data_valid) begin
					wr_data_buf[95:88] <= data_real_8;
					data_write_state <= 92;
				end
			end

			92: begin
				if (data_valid) begin
					wr_data_buf[103:96] <= data_real_8;
					data_write_state <= 93;
				end
			end

			93: begin
				if (data_valid) begin
					wr_data_buf[111:104] <= data_real_8;
					data_write_state <= 94;
				end
			end

			94: begin
				if (data_valid) begin
					wr_data_buf[119:112] <= data_real_8;
					data_write_state <= 95;
				end
			end

			95: begin
				if (data_valid) begin
					fifo_wr_data <= { data_real_8, wr_data_buf };
					fifo_wr_en <= 1'b1;
					data_write_state <= 80;
				end
			end

			default : begin 
				fifo_wr_en <= 1'b0;
				fifo_wr_data <= 128'h5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A;
			end
		endcase
	end
end





endmodule : rx_fifo_axis
