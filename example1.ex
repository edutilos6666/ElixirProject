defmodule M do
def main do
    # test1()
    # data_stuff()
    # math_stuff()
    # test_comparison()
    # test_logical()
    # test_decisionMaking()
    # test_tuple()
    # test_list()
    # test_map()
    # test_patternMatching()
    # test_anonymous_fn
    # test_recursion()
    # test_enumerables()
    # test_list_comprehension()
    # test_exception_handling()
    test_concurrency()

end


def test_concurrency do
  spawn(fn() -> loop(50, 1) end)
  spawn(fn() -> loop(100, 50) end)
  send(self(), {:french, "Bob"})
  send(self(), {:azerbaijani, "Edutilos"})
  receive do
    {:german, name} -> IO.puts "Guten tag #{name}"
    {:french, name} -> IO.puts "Bonjour #{name}"
    {:english, name} -> IO.puts "Hello #{name}"
  after
    500 -> IO.puts "Times up"
  end
end


def test_exception_handling do
  err = try do
    5 / 0
  rescue
    ArithmeticError -> "Can't Divide by Zero"
  end
  IO.puts err
end

def test_list_comprehension do
  dbl_list2 = for n <- [1,2,3] , do: n * 2
  IO.inspect dbl_list2
  even_list = for n <- [1,2,3,4], rem(n,2) == 0 , do: n
  IO.inspect even_list
end

def test_enumerables do
  IO.puts "Even List: #{Enum.all?([1,2,3],
fn(n)-> rem(n,2) == 0 end)}"
  IO.puts "Even Item: #{Enum.any?([1,2,3],
 fn(n) -> rem(n,2) == 0 end)}"
  Enum.each([1,2,3], fn(n)-> IO.puts n end)
  dbl_list = Enum.map([1,2,3], fn(n) -> n *2 end)
  IO.inspect dbl_list
  sum_vals = Enum.reduce([1,2,3], fn(n,sum) -> n + sum end)
  IO.puts "Sum: #{sum_vals}"
  IO.inspect Enum.uniq([1,2,2])
end


def factorial(num) do
  if num <= 1 do
    1
  else
    result = num * factorial(num - 1)
    result
  end
end


def sum([]), do: 0
def sum([h|t]), do: h + sum(t)

def loop(0,_), do: nil
def loop(max, min) do
  if max < min do
    loop(0,min)
  else
    IO.puts "Num: #{max}"
    loop(max-1, min)
  end
end

def test_recursion do
  IO.puts "Factorial of 3: #{factorial(4)}"
  # looping
  IO.puts "Sum: #{sum([1,2,3])}"
  loop(5,1)
end


def do_it(x \\ 1 , y \\ 1) do
  x + y
end

def test_anonymous_fn do
  get_sum = fn(x,y) -> x + y end
  IO.puts "5 +5 = #{get_sum.(5,5)}"
  get_less = &(&1 - &2)
  IO.puts "7 - 6 = #{get_less.(7,6)}"
  add_sum = fn
    {x,y} -> IO.puts "#{x} + #{y} = #{x+y}"
    {x,y,z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
  end
  add_sum.({1,2})
  add_sum.({1,2,3})
  IO.puts do_it()
end

def test_patternMatching do
  [length, width] = [20, 30]
  IO.puts "Width: #{width} , length: #{length}"
  [_, [_,a]] = [20, [30,40]]
  IO.puts "Get Num: #{a}"
end


def test_map do
  capitals = %{"Alabama" => "Montgomery", "Alaska" => "Juneau", "Arizona" => "Phoenix"}
  IO.puts "Capital of Alaska is #{capitals["Alaska"]}"
  capitals2 = %{alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix"}
  IO.puts "Capital of Arizona is #{capitals2.arizona}"
  capitals3 = Dict.put_new(capitals , "Arkansas", "Big Rock")
  IO.inspect capitals
  IO.inspect capitals2
  IO.inspect capitals3
end


def display_list([word|words]) do
  IO.puts word
  display_list(words)
end
def display_list([]), do: nil

def test_list do
  list1 = [1, 2,3]
  list2 = [4, 5,6]
  list3 = list1 ++ list2
  list4 = list3 -- list1
  IO.puts 6 in list4
  [head | tail] = list3
  IO.puts "Head: #{head}"
  IO.write "Tail : "
  IO.inspect tail
  IO.inspect [97,98]
  IO.inspect [97,98], char_lists: :as_lists
  Enum.each tail, fn item ->
    IO.puts item
  end

  words = ["Random", "Words", "in a" , "list"]
  Enum.each words , fn word ->
    IO.puts word
  end
  display_list(words)
  IO.puts display_list(List.delete(words, "Random"))
  IO.puts display_list(List.delete_at(words, 1))
  IO.puts display_list(List.insert_at(words, 4, "Yeah"))
  IO.puts List.first(words)
  IO.puts List.last(words)
  my_stats5 = [name: "Derek", height: 6.25, weight: 175]
  IO.inspect my_stats5

end


def test_tuple do
  my_stats = {175, 6.25, :Derek}
  IO.puts "Tuple #{is_tuple(my_stats)}"

  my_stats2 = Tuple.append(my_stats, 42)
  IO.puts "Age #{elem(my_stats2, 3)}"
  IO.puts "Size #{tuple_size(my_stats2)}"
  my_stats3 = Tuple.delete_at(my_stats2, 0)
  my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)
  many_zeroes = Tuple.duplicate(0, 5)
  IO.inspect(my_stats2)
  IO.inspect(my_stats3)
  IO.inspect(my_stats4)
  {weight, height, name} = {175, 6.25, :Derek}
  IO.puts "Weight: #{weight}"
end


def test_decisionMaking do
  age = 16
  if age >= 18 do
    IO.puts "Can Vote"
  else
    IO.puts "Can Wait"
  end

  # unless
  unless age === 18 do
    IO.puts "You're not 18"
  else
    IO.puts "You're 18"
  end

  # cond
  cond do
    age >= 14 -> IO.puts "You can wait"
    age >= 16 -> IO.puts "You can drive"
    age >= 18 -> IO.puts "You can vote"
    true -> IO.puts "Default"
  end

  # case
  case 2 do
    1 -> IO.puts "Entered 1"
    2 -> IO.puts "Entered 2"
    _ -> IO.puts "Default"
  end


end


def test_logical do
  age = 16
  IO.puts "Vote & Drive : #{(age >= 16) and (age >= 18)}"
  IO.puts "Vote or Drive : #{(age >= 16) or (age >= 18)}"
  IO.puts not true
end


def test_comparison do
  IO.puts "4 == 4.0 : #{4 == 4.0}"
  IO.puts "4 === 4.0 : #{4 === 4.0}"
  IO.puts "4 != 4.0 : #{4 != 4.0}"
  IO.puts "4 !== 4.0: #{4 !== 4.0}"
  IO.puts "5 > 4 : #{5 > 4}"
  IO.puts "5 >= 4 : #{5 >= 4}"
  IO.puts "5 < 4 : #{5 < 4}"
  IO.puts "5 <= 4 : #{5 <= 4}"
end


def math_stuff do
   x = 10
   y = 3
   add = x + y
   subtract = x - y
   multiply = x * y
   divide = x / y
   divideInt = div(x,y)
   remainder = rem(x,y)
   IO.puts "x = #{x} and y = #{y}"
   IO.puts "x + y = #{add}"
   IO.puts "x -y = #{subtract}"
   IO.puts "x * y = #{multiply}"
   IO.puts "x / y = #{divide}"
   IO.puts "x div y = #{divideInt}"
   IO.puts "x rem y = #{remainder}"
end


def data_stuff do
   my_int = 123
   IO.puts "Integer #{is_integer(my_int)}"
   my_float = 3.14159
   IO.puts "Float #{is_float(my_float)}"

  IO.puts "Atom #{is_atom(:Pittsburgh)}"
  :"New York"
  one_to_10 = 1..10

  # strings
  my_str = "My Sentence"
  IO.puts "Length: #{String.length(my_str)}"
  longer_str = my_str <> " " <> "is longer"
  IO.puts "Equal : #{"Egg" === "egg"}"
  IO.puts "My ? #{String.contains?(my_str, "My")}"
  IO.puts "Index 4 : #{String.at(my_str, 4)}"
  IO.puts "Substring_ #{String.slice(my_str, 3, 8)}"
  IO.inspect String.split(longer_str, " ")
  IO.puts String.reverse(longer_str)
  IO.puts String.upcase(longer_str)
  IO.puts String.downcase(longer_str)
  IO.puts String.capitalize(longer_str)
end


def test1 do
    name = IO.gets("What is your name? ") |> String.trim
    IO.puts "Hello #{name}"
end


end
