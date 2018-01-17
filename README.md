### Tools , that were used
<ol>
<li>Elixir version: IEx 1.5.0 </li>
<li>Atom IDE with elixir plugin setup
</ol>

##### How to compile and execute .ex file
<pre>
# suppose we have Example1.ex
defmodule M do
  def main do
    IO.puts("Hello World.")
  end
end

# enter to the terminal
iex
# compile Example1.ex
c("Example1.ex")
# now execute main function of M module
M.main()
</pre>
