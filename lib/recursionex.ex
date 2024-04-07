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

  def remove_all(_element, []), do: []
  def remove_all(element, [element | tail]), do: remove_all(element, tail)
  def remove_all(element, [head | tail]), do: [head | remove_all(element, tail)]

  def replace_all(_element, _replacement, []), do: []
  def replace_all(element, replacement, [element | tail]), do: [replacement | replace_all(element, replacement, tail)]
  def replace_all(element, replacement, [head | tail]), do: [head | replace_all(element, replacement, tail)]

  def reverse([]), do: []
  # this is not compliant to tail recursion optimisation
  def reverse([head | tail]), do: reverse(tail) ++ [head]

end