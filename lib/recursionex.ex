defmodule Recursionex do

  def size([]) do 0 end
  def size ([_head | tail]) do 1 + size(tail) end

  def last([]), do: nil
  def last([lastElement]), do: lastElement
  def last([_head | tail]), do: last(tail)

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def member?(_element, []), do: false
  def member?(element, [head | tail]), do: element==head or member?(element, tail)

  def remove_first(_element, []), do: []
  def remove_first(element, [element | tail]), do: tail
  def remove_first(element, [head | tail]), do: [head | remove_first(element, tail)]

end