defmodule M do
  def main do
    # example1()
    # example2()
    # example3()
    example4()
  end


  def example4 do
    grade = "A"
    case grade do
      "A" -> IO.puts("You got an A.")
      "B" -> IO.puts("You got a B.")
      "C" -> IO.puts("You got a C.")
      "D" -> IO.puts("You got a D..")
      _ -> IO.puts("You failed.")
    end 
  end
  def example3 do
    age = 10
    cond do
      (age > 0 ) && (age < 10) -> IO.puts("You are a kid.")
      (age >= 10) && (age < 20) -> IO.puts("You are a teenager.")
      (age >= 20) && (age < 50) -> IO.puts("You are an adult.")
      true -> IO.puts("You are an elderly.")
    end
  end
  def example2 do
    age = 18
    unless age == 18 do
      IO.puts("You are not 18.")
    else
      IO.puts("You are 18.")
    end
  end
  def example1 do
    age = 10
    if (age > 0) && (age < 10) do
      IO.puts("You are a kid.")
    else if (age >= 10) && (age < 20) do
      IO.puts("You are a teenager.")
    else if (age>= 20) && (age < 50) do
      IO.puts("You are an adult.")
    else
      IO.puts("You are an elderly.")
    end
    end
    end
  end
end
