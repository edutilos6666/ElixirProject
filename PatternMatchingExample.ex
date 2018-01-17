defmodule M do
  def main do
    example1()
  end

  def example1 do
    IO.puts("<<example1()>>")
    [width, height, depth] = [10, 20, 30]
    IO.puts("width = #{width}")
    IO.puts("height = #{height}")
    IO.puts("depth = #{depth}")
    [_, [_, [_, [a]]]] = [1,[2,[3, [4]]]]
    IO.puts("a = #{a}")
    {id, name} = {1, "foo"}
    IO.puts("id = #{id} and name = #{name}")
    
  end
end
