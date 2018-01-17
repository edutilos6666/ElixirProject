defmodule M do
  def main do
    example1()
  end

  def example1 do
    err = try do
      5 / 0
    rescue
      ArithmeticError -> "Division by zero"
    end

    IO.puts("err = #{err}")
  end
end
