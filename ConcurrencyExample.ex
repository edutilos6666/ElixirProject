defmodule M do
  def main do
    example1()
  end

  def loop(0,_), do: nil
  def loop(max, min) do
    if max < min do
      loop(0,min)
    else
      IO.puts "Num: #{max}"
      loop(max-1, min)
    end
  end

  def example1 do
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
end
