defmodule M do
  def main do
    # test_Tuple()
    # test_List()
    # test_Map()
    test_String()
  end


 def test_String do
   str1 = "foo"
   str2 = "bar"
   str3 = str1 <> str2
   IO.puts str3
   IO.inspect(String.downcase("FOO"))
   IO.inspect(String.upcase("foo"))
   IO.inspect(String.capitalize("foo"))
   IO.inspect(String.capitalize("FOO"))
   IO.inspect(String.length("foobar"))
   IO.inspect(String.contains?("foobar", "foo"))
   IO.inspect(String.at("foobar", 3))
   IO.inspect(String.slice("foobar", 3, 3))
   IO.inspect("foo" == "Foo")
   IO.inspect("foo" == "foo")
   IO.inspect(String.split("foo,bar,bim", ","))
   IO.inspect(String.reverse("foobar"))
 end

  def test_Map do
    IO.puts("<<test_Map>>")
    person1 = %{"id"=> 1, "name" => "foo", "age" => 10, "wage" => 100.0, "active"=>true}
    IO.inspect(person1)
    person2 = %{id:  2, name: "bar", age: 20 , wage: 200.0, active: false}
    IO.inspect(person2)
    IO.puts("<<person1 details>>")
    IO.puts("id = #{person1["id"]}")
    IO.puts("name = #{person1["name"]}")
    IO.puts("age = #{person1["age"]}")
    IO.puts("wage = #{person1["wage"]}")
    IO.puts("active = #{person1["active"]}")
    IO.puts("<<person2 details>>")
    IO.puts("id = #{person2.id}")
    IO.puts("name = #{person2.name}")
    IO.puts("age = #{person2.age}")
    IO.puts("wage = #{person2.wage}")
    IO.puts("active = #{person2.active}")
    # Dict module is deprecated , use Map module instead
    # IO.puts("id = #{Dict.get(person1, "id")}")
    IO.puts("<<person1 details with Map.fetch()>>")
    id_tuple = Map.fetch(person1, "id")
    name_tuple = Map.fetch(person1, "name")
    age_tuple = Map.fetch(person1, "age")
    wage_tuple = Map.fetch(person1, "wage")
    active_tuple = Map.fetch(person1, "active")
    IO.puts("id = #{elem(id_tuple,1)}")
    IO.puts("name = #{elem(name_tuple,1)}")
    IO.puts("age = #{elem(age_tuple, 1)}")
    IO.puts("wage = #{elem(wage_tuple,1)}")
    IO.puts("active = #{elem(active_tuple,1)}")
    IO.puts("<<person1 details with Map.get()>>")
    IO.puts("id = #{Map.get(person1, "id")}")
    IO.puts("name = #{Map.get(person1, "name")}")
    IO.puts("age = #{Map.get(person1, "age")}")
    IO.puts("wage = #{Map.get(person1, "wage")}")
    IO.puts("active = #{Map.get(person1, "active")}")
    IO.inspect(Map.keys(person1))
    IO.inspect(Map.values(person1))
    IO.inspect(Map.delete(person1, "id"))
    IO.inspect(Map.drop(person1, ["id", "age", "wage"]))
    m1 = %{id: 1, name: "foo"}
    m2 = %{"age" => 10, "wage" => 100.0}
    m3 = Map.merge(m1, m2)
    IO.inspect m3
    m3 = Map.merge(m1, m2 , fn (a,b,c) -> IO.puts "merged" end )
    IO.inspect m3
  end

  def display_list([head|tail]) do
    IO.puts(head)
    display_list(tail)
  end
  def display_list([]), do: nil
  def test_List do
    IO.puts("<<test_List>>")
    list1 = [1,2,3]
    list2 = [4,5,6]
    list3 = list1 ++ list2
    list4 = list3 -- list1
    IO.inspect(list1)
    IO.inspect(list2)
    IO.inspect(list3)
    IO.inspect(list4)
    [head|tail] = list4
    IO.puts("head of list4 = #{head}")
    IO.puts("tail of list4 = ")
    IO.inspect(tail)
    IO.inspect [97,98]
    IO.inspect [97,98], charlists: :as_lists
    IO.puts("<<list3 with Enum>>")
    Enum.each list3, fn item ->
      IO.puts item
    end

    words = ["foo", "bar", "bim"]
    IO.puts("<<words with Enum>>")
    Enum.each words , fn word ->
      IO.puts word
    end
    IO.puts("words with custom display_list")
    display_list words
    IO.puts("words with IO.inspect(): ")
    IO.inspect words
    IO.inspect(List.delete(words, "foo"))
    IO.inspect(List.delete_at(words, 1))
    IO.inspect(List.insert_at(words, 0, "pako"))
    IO.puts(List.first(words))
    IO.puts(List.last(words))
    person = [id: 1, name: "foo", age: 10, wage: 100.0, active: true]
    IO.inspect person
    Enum.each person , fn {key,value} ->
      IO.puts ("#{key} => #{value}")
    end
    IO.puts("<<person details>>")
    IO.puts("id = #{person[:id]}")
    IO.puts("name = #{person[:name]}")
    IO.puts("age = #{person[:age]}")
    IO.puts("wage = #{person[:wage]}")
    IO.puts("active = #{person[:active]}")
    IO.puts("<<person details with Keyword>>")
    IO.puts("id = #{Keyword.get(person, :id)}")
    IO.puts("name = #{Keyword.get(person, :name)}")
    IO.puts("age = #{Keyword.get(person, :age)}")
    IO.puts("wage = #{Keyword.get(person, :wage)}")
    IO.puts("active = #{Keyword.get(person, :active)}")
    values = Keyword.get_values(person, :id)
    IO.inspect values
    IO.inspect(Keyword.put_new(person, :address, "Bochum"))
    IO.inspect(Keyword.delete(person, :id))
    IO.inspect(Keyword.delete(person, :name))
  end
  def test_Tuple do
    IO.puts("<<test_Tuple()>>")
    person = {1, "foo", 10, 100.0, true}
    IO.puts("person is tuple? = #{is_tuple(person)}")
    IO.inspect(person)
    person2 = {2}
    person2 = Tuple.append(person2, "bar")
    person2 = Tuple.append(person2, 20)
    person2 = Tuple.append(person2, 200.0)
    person2 = Tuple.append(person2, false)
    IO.inspect(person2)
    IO.puts("<<person2 details:>>")
    IO.puts("size = #{tuple_size(person2)}")
    IO.puts("id = #{elem(person2, 0)}")
    IO.puts("name = #{elem(person2, 1)}")
    IO.puts("age = #{elem(person2, 2)}")
    IO.puts("wage = #{elem(person2, 3)}")
    IO.puts("active = #{elem(person2, 4)}")
    person3 = Tuple.delete_at(person2, 0)
    person4 = Tuple.insert_at(person2, 1, "Bochum")
    IO.inspect(person3)
    IO.inspect(person4)
    zeros = Tuple.duplicate(0, 10)
    IO.inspect(zeros)
    {id, name, age, wage, active} = person
    IO.puts("<<person details:>>")
    IO.puts("id = #{id}")
    IO.puts("name = #{name}")
    IO.puts("age = #{age}")
    IO.puts("wage = #{wage}")
    IO.puts("active = #{active}")
  end
end
