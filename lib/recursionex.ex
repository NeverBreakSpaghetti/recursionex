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

  def reverse(list), do: reverse_optimised(list,[])
  def reverse_optimised([],reversedList), do: reversedList
  def reverse_optimised([head | tail], reversedList), do: reverse_optimised(tail, [head | reversedList])
  
  def index_of(_element, _list, index \\ -1)
  def index_of(element, [element | _tail], index), do: index + 1
  def index_of(element, [_head | tail], index), do: index_of(element, tail, index + 1)

end