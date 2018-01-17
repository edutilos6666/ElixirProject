defmodule M do
  def main do
    # example1()
    # example2()
    # example3()
    # example4()
    example5()
  end



  # recursion
  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  def factorial(num) do
    if num <= 1 do
      1
    else
      num* factorial(num-1)
    end
  end

  def product([]) , do: 1
  def product([h|t]), do: h* product(t)

  def example5() do
    IO.puts("<<example5()>>")
    IO.puts("sum([1,2,3,4,5]) = #{sum([1,2,3,4,5])}")
    IO.puts("product([1,2,3,4,5]) = #{product([1,2,3,4,5])}")
    IO.puts("factorial(10) = #{factorial(10)}")
  end

  # function with default values
  def printProps(id \\ 0 , name \\ "", age \\ 0, wage \\ 0.0, active \\ false) do
    IO.puts("<<printProps()>>")
    IO.puts("id = #{id}")
    IO.puts("name = #{name}")
    IO.puts("age = #{age}")
    IO.puts("wage = #{wage}")
    IO.puts("active = #{active}")
  end

  def example4 do
    printProps()
    IO.puts("")
    printProps(1)
    IO.puts("")
    printProps(1, "foo")
    IO.puts("")
    printProps(1, "foo", 10)
    IO.puts("")
    printProps(1, "foo", 10, 100.0)
    IO.puts("")
    printProps(1, "foo", 10, 100.0, true)
    IO.puts("")


  end

  # anonymous function
  def example3 do
    add = fn
      {x,y} -> IO.puts("#{x} + #{y} = #{x+y}")
      {x,y,z} -> IO.puts("#{x} + #{y} + #{z} = #{x+y+z}")
      {x,y,z,w} -> IO.puts("#{x} + #{y} + #{z} + #{w} = #{x+y+z+w}")
    end

    add.({1, 2})
    add.({1,2,3})
    add.({1,2,3,4})
  end

  # anonymous function
  def example2 do
    add = &(&1 + &2)
    subtract = &(&1 - &2)
    multiply = &(&1 * &2)
    divide = &(&1 / &2)
    intDivide = &(div(&1,&2))
    remainder = &(rem(&1,&2))
    IO.puts("<<example2()>>")
    x = 10
    y = 3
    IO.puts("x = #{x} and y = #{y}")
    IO.puts("x + y = #{add.(x,y)}")
    IO.puts("x - y = #{subtract.(x,y)}")
    IO.puts("x * y = #{multiply.(x,y)}")
    IO.puts("x / y = #{divide.(x,y)}")
    IO.puts("div(x,y) = #{intDivide.(x,y)}")
    IO.puts("rem(x,y) = #{remainder.(x,y)}")
  end

  # anonymous function
  def example1 do
    add = fn(x,y) -> x + y end
    subtract = fn(x,y) ->
       x - y
    end
    multiply = fn (x,y) -> x * y end
    divide = fn(x,y) -> x / y end
    intDivide = fn(x,y) -> div(x, y) end
    remainder = fn(x,y) -> rem(x, y) end
    IO.puts("<<example1()>>")
    x = 10
    y = 3
    IO.puts("x = #{x} and y = #{y}")
    IO.puts("x + y = #{add.(x,y)}")
    IO.puts("x - y = #{subtract.(x,y)}")
    IO.puts("x * y = #{multiply.(x,y)}")
    IO.puts("x / y = #{divide.(x,y)}")
    IO.puts("div(x,y) = #{intDivide.(x,y)}")
    IO.puts("rem(x,y) =#{remainder.(x,y)}")
  end
end
