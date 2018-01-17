defmodule ProtocolExample do
  def main do
    test_Protocol()
  end


  defprotocol Blank do
    def blank?(data)
  end


  defimpl Blank, for: List do
    def blank?([]), do: true
    def blank?(_), do: false
  end

  defimpl Blank, for: BitString do
    def blank?(""), do: true
    def blank?(_), do: false
  end

  defimpl Blank, for: Map do
    def blank?(map), do: map_size(map) == 0
  end

  def test_Protocol do
    IO.puts(Blank.blank?([]))
    IO.puts(Blank.blank?(["foo", 10]))
    IO.puts(Blank.blank?(""))
    IO.puts(Blank.blank?("foo"))
    IO.puts(Blank.blank?(%{}))
    IO.puts(Blank.blank?(%{"id"=>1 , "name"=> "foo"}))
  end
end
