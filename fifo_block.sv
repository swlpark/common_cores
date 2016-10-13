`define DATA_WIDTH 8*(2**WORD_BWIDTH)
`define ADDR_WIDTH BLK_ADDR_WIDTH-WORD_BWIDTH

module fifo_block
#
(
  parameter NBLKS_BITS = 1,
  parameter BLK_ADDR_WIDTH = 14,
  parameter WORD_BWIDTH = 3      //Byte Width 2^N; (e.g 2 => 4 Bytes)
)
(
  //Producer ports
  input  wire                   p_clk,
  input  wire                   p_rst,
  input  wire                   p_push,
  input  wire                   p_read,
  input  wire                   p_write,
  input  wire [`ADDR_WIDTH-1:0] p_addr,
  input  wire [`DATA_WIDTH-1:0] p_data,
  output wire [`DATA_WIDTH-1:0] p_dout,

  //Consumer ports
  input  wire                   c_clk,
  input  wire                   c_pop,
  input  wire                   c_read,
  input  wire [`ADDR_WIDTH-1:0] c_addr,
  output wire [`DATA_WIDTH-1:0] c_dout,

  //Status
  output wire status_push_over,
  output wire status_write_over,
  output wire status_pop_under,
  output wire status_read_under,
  output wire status_full,
  output wire status_empty,

  //Prod & Cons transfer control
  output wire p_request,
  output wire c_request,
  output wire p_check
)
 //memory array to implement FIFO & BLOCK RAM
 reg [`DATA_WIDTH-1:0] mem_block [(1 << (BLK_ADDR_WIDTH+NBLKS_BITS))];

 //producer block_cnt
 logic [NBLKS_BITS-1:0] p_blk_cnt;
 
 always_ff (@posedge p_clk) begin : fsm
   if (p_rst) 

 end
 

endmodule  
