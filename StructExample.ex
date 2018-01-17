defmodule M do
  def main do
    example1()
  end

  defmodule Person do
    defstruct id: 0, name: "", age: 0 , wage: 0.0, active: false
  end

  def example1 do
    p1 = %Person{}
    p2 = %Person{id: 1, name: "foo", age: 10, wage: 100.0, active: true}
    IO.inspect p1
    IO.inspect(p2)
    IO.puts("<<p2 details>>")
    IO.puts("id = #{p2.id}")
    IO.puts("name = #{p2.name}")
    IO.puts("age = #{p2.age}")
    IO.puts("wage = #{p2.wage}")
    IO.puts("active = #{p2.active}")
    p3 = %{p2 | id: 2 , name: "bar", age: 20}
    IO.inspect(p3)
    IO.puts("<<p3 details>>")
    IO.puts("id = #{p3.id}")
    IO.puts("name = #{p3.name}")
    IO.puts("age = #{p3.age}")
    IO.puts("wage = #{p3.wage}")
    IO.puts("active = #{p3.active}")
  end
end
