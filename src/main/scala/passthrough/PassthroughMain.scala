import chisel3._
import chisel3.stage.ChiselStage
class PassthroughGenerator(width : Int) extends Module {

  val io = IO(new Bundle {
    val in  = Input(UInt(width.W))
    val out = Output(UInt(width.W))
  })

  io.out := io.in
}

object PassthroughMain extends App {
  (new ChiselStage).emitVerilog(new PassthroughGenerator(32), Array("--target-dir", "generated"))
}