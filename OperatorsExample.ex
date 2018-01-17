use Bitwise
defmodule M do
   def main do
      # test_ArithmeticOps()
      # test_RelationalOps()
      # test_LogicalOps()
      test_MiscOps()
   end

   def test_MiscOps do
      a = if true, do: "True", else: "False"
      b = :yes in [:true, :false, :no, :yes]
      IO.puts("<<Misc Operators>>")
      IO.puts("ternary a = #{a}")
      IO.puts("in b = #{b}")
   end
   def test_BitwiseOps do
      x = 10
      y = 23
      and1 = x &&& y
      and2 = band(x, y)
      or1 = x ||| y
      or2 = bor(x, y)
      xor1 = x ^^^ y
      xor2 = bxor(x,y)
      not_x1 = ~~~x
      not_x2 = bnot(x)
      x_sl_2_1 = x <<< 2
      x_sl_2_2 = bsl(x,2)
      x_sr_2_1 = x >>> 2
      x_sr_2_2 = bsr(x,2)
      IO.puts("<<Bitwise Operators>>")
      IO.puts("x = #{x} and y = #{y}")
      IO.puts("x &&& y = #{and1}")
      IO.puts("band(x,y) = #{and2}")
      IO.puts("x ||| y = #{or1}")
      IO.puts("bor(x,y) = #{or2}")
      IO.puts("x ^^^ y = #{xor1}")
      IO.puts("bxor(x,y) = #{xor2}")
      IO.puts("x <<< 2 = #{x_sl_2_1}")
      IO.puts("bsl(x,2) = #{x_sl_2_2}")
      IO.puts("x >>> 2 = #{x_sr_2_1}")
      IO.puts("bsr(x,2) = #{x_sr_2_2}")
      IO.puts("~~~x = #{not_x1}")
      IO.puts("bnot(x) = #{not_x2}")
      IO.puts("")
   end

   def test_LogicalOps do
      x = true
      y = false
      and1 = x && y
      and2 = x and y
      or1 = x || y
      or2 = x or y
      not_x  = !x
      not_y = !y
      not_x2 = not x
      not_y2 = not y
      IO.puts("<<Logical Operators>>")
      IO.puts("x = #{x} and y = #{y}")
      IO.puts("x && y = #{and1}")
      IO.puts("x and y = #{and2}")
      IO.puts("x || y = #{or1}")
      IO.puts("x or y = #{or2}")
      IO.puts("!x = #{not_x}")
      IO.puts("not x = #{not_x2}")
      IO.puts("!y = #{not_y}")
      IO.puts("not y = #{not_y2}")
      IO.puts("")
   end
   def test_RelationalOps do
      x = 10
      y = 3
      eq1 = x == y
      eq2 = x === y
      ne1 = x != y
      ne2 = x !== y
      gt = x > y
      gte = x >= y
      lt = x < y
      lte = x <= y
      IO.puts("<<Relational Operators>>")
      IO.puts("x = #{x} and y = #{y}")
      IO.puts("x == y = #{eq1}")
      IO.puts("x === y = #{eq2}")
      IO.puts("x != y = #{ne1}")
      IO.puts("x !== y = #{ne2}")
      IO.puts("x > y = #{gt}")
      IO.puts("x >= y = #{gte}")
      IO.puts("x < y = #{lt}")
      IO.puts("x <= y = #{lte}")
      IO.puts("")
   end
   def test_ArithmeticOps do
      x = 10
      y = 3
      add = x + y
      subtract = x - y
      multiply = x * y
      divide = x / y
      intDivide = div(x,y)
      remainder = rem(x,y)
      IO.puts("<<Arithmetic Operators>>")
      IO.puts("x = #{x} and y = #{y}")
      IO.puts("x + y = #{add}")
      IO.puts("x - y = #{subtract}")
      IO.puts("x * y = #{multiply}")
      IO.puts("x / y = #{divide}")
      IO.puts("div(x,y) = #{intDivide}")
      IO.puts("rem(x,y) = #{remainder}")
      IO.puts("")
   end
end
