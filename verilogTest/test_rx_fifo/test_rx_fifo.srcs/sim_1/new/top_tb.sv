`timescale 1ns / 1ps

module top_tb();

bit aclk = 0, rst_n = 0;
bit data_clk = 0;
bit [2:0]   data_format = 3'b100;

reg [15:0]      data_i = 256, data_q = 512;
//bit [127:0]     data_in; //= { 48'h0, data_q, 48'h0, data_i };
//assign  data_in = { 48'h0, data_q, 48'h0, data_i };
bit             data_ready;
bit             data_valid = 1;
bit [7:0]       data_write_state;
bit             fifo_prog_full;
bit [127:0]     fifo_rd_data;
bit             fifo_rd_empty;
bit             fifo_rd_en;
bit             fifo_rd_rst_busy;
bit             fifo_rd_valid;
bit             fifo_srst;
bit [127:0]     fifo_wr_data;
bit             fifo_wr_en;
bit             fifo_wr_full;
bit             fifo_wr_rst_busy;
bit [127:0]     m_axis_rx_tdata;
bit             m_axis_rx_tready = 0;
bit             m_axis_rx_tvalid;
bit             rx_enable = 0;
bit [119:0]     wr_data_buf;

top_wrapper DUT (
    .aclk(aclk),
    .aresetn(rst_n),
    .data_clk(data_clk),
    .data_format(),
    .data_in({ 48'h0, data_q, 48'h0, data_i }),
    .data_ready(data_ready),
    .data_valid(data_valid),
    .data_write_state(data_write_state),
    .fifo_prog_full(fifo_prog_full),
    .fifo_rd_data(fifo_rd_data),
    .fifo_rd_empty(fifo_rd_empty),
    .fifo_rd_en(fifo_rd_en),
    .fifo_rd_rst_busy(fifo_rd_rst_busy),
    .fifo_rd_valid(fifo_rd_valid),
    .fifo_srst(fifo_srst),
    .fifo_wr_data(fifo_wr_data),
    .fifo_wr_en(fifo_wr_en),
    .fifo_wr_full(fifo_wr_full),
    .fifo_wr_rst_busy(fifo_wr_rst_busy),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tready(m_axis_rx_tready),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .rx_enable(rx_enable),
    .wr_data_buf(wr_data_buf));

always #5ns aclk = ~aclk;
always #2ns data_clk = ~data_clk;
always #4ns data_q--;
always #4ns data_i++;

always @(data_ready or fifo_rd_empty) begin
    if (data_ready & !m_axis_rx_tready) m_axis_rx_tready = 1;
    else if (m_axis_rx_tready & fifo_rd_empty) m_axis_rx_tready = 0;
end

initial begin
    data_format = 3'b100;
    rst_n = 0;
    rx_enable = 0;
    m_axis_rx_tready = 0;
    #50ns;
    rst_n = 1;
    #50ns;
    m_axis_rx_tready = 1;
    #20ns;
    rx_enable = 1;
    //#10000ns;
    //rx_enable = 0;
end

endmodule
