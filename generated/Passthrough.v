module Passthrough(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
  assign io_out = io_in; // @[PassthroughMain.scala 9:10]
endmodule
