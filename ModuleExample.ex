defmodule M do
  def main do
    test_SimpleMath()
  end

  defmodule SimpleMath do
    def add(x, y) do
      x + y
    end

    def subtract(x , y) do
      x - y
    end

    def multiply(x, y) do
      x * y
    end
    def divide(x, y) do
      x / y
    end
    def intDivide(x, y) do
      div(x, y)
    end
  end



  def test_SimpleMath do
    x = 10
    y =  3
    add = SimpleMath.add(x, y)
    subtract = SimpleMath.subtract(x, y)
    multiply = SimpleMath.multiply(x, y)
    divide = SimpleMath.divide(x, y)
    intDivide = SimpleMath.intDivide(x,y)
    IO.puts("<<SimpleMath>>")
    IO.puts("x = #{x} and y = #{y}")
    IO.puts("x + y = #{add}")
    IO.puts("x - y = #{subtract}")
    IO.puts("x * y = #{multiply}")
    IO.puts("x / y = #{divide}")
    IO.puts("div(x,y) = #{intDivide}")
  end



end
