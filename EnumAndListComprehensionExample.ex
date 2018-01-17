defmodule M do
  def main do
    # example1()
    example2()
  end


  # Enum module
  def example2 do
    list1 = [1,2,3,4,5,6,7,8,9,10]
    IO.puts("<<example2()>>")
    IO.inspect Enum.count(list1)
    IO.inspect Enum.sum(list1)
    IO.inspect Enum.all?(list1, fn x -> rem(x, 2) == 0 end)
    IO.inspect Enum.any?(list1, fn x -> rem(x,2) == 0 end)
    IO.inspect Enum.map(list1, fn x -> x * x * x end)
    IO.inspect Enum.reduce(list1, fn(x, acc) -> x + acc end)
    IO.inspect Enum.filter(list1, fn x -> rem(x, 2) == 0 end)
    IO.inspect Enum.filter(list1, fn x -> rem(x,2) != 0 end)
    IO.inspect Enum.uniq([1,2,3])
    IO.inspect Enum.uniq([1,2,3,1,3])
    IO.inspect Enum.min(list1)
    IO.inspect Enum.max(list1)
  end

  # list comprehension
  def example1 do
    double_list = for n <- [1,2,3] , do: n*2
    triple_list = for n <- [1,2,3] , do: n*3
    even_list = for n <- [1,2,3,4], rem(n,2) == 0, do: n
    odd_list = for n <- [1,2,3,4] , rem(n,2) != 0, do: n
    IO.puts("<<example1()>>")
    IO.inspect(double_list)
    IO.inspect(triple_list)
    IO.inspect(even_list)
    IO.inspect(odd_list)
  end
end
