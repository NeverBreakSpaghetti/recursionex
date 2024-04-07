defmodule Recursionex do

  def size([]) do 0 end
  def size ([_head | tail]) do 1 + size(tail) end

  def last([]), do: nil
  def last([lastElement]), do: lastElement
  def last([_head | tail]), do: last(tail)

end