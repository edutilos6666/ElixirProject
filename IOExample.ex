defmodule M do
  def main do
    example1()
  end

  def example1 do
    filename = "temp.dat"
    # write
    {:ok , fh} = File.open(filename, [:write])
    p1 = {1, "foo", 10 , 100.0, true}
    IO.puts(fh, "id = #{elem(p1, 0)}")
    IO.puts(fh, "name = #{elem(p1, 1)}")
    IO.puts(fh, "age = #{elem(p1,2)}")
    IO.puts(fh, "wage = #{elem(p1,3)}")
    IO.puts(fh, "active = #{elem(p1, 4)}")
    File.close(fh)
    #append
    {:ok, fh} = File.open(filename, [:append])
    IO.puts(fh, "address = Bochum")
    File.close(fh)

    # read
    # {:ok, fh} = File.open(filename, [:read])
    # File.close(fh)
    # {status, content}
    {_, content} = File.read(filename)
    IO.puts(content)
    # without status , only content 
    IO.puts File.read!(filename)
  end
end
