circuit Passthrough :
  module Passthrough :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<32>, out : UInt<32>}

    io.out <= io.in @[PassthroughMain.scala 9:10]

