defmodule Recursionex do

  def size([]), do: 0
  def size([_head | tail]), do: 1 + size(tail)

  def last([]), do: nil
  def last([last]), do: last
  def last([_head | tail]), do: last(tail)

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def member?(_el, []), do: false
  def member?(el, [el | _tail]), do: true
  def member?(el, [_head | tail]), do: member?(el, tail)

  def remove_first(_el, []), do: []
  def remove_first(el, [el | tail]), do: tail
  def remove_first(el, [head | tail]), do: [head | remove_first(el, tail)]

  def remove_all(_el, []), do: []
  def remove_all(el, [el | tail]), do: remove_all(el, tail)
  def remove_all(el, [head | tail]), do: [head | remove_all(el, tail)]

  def replace_all(_el, _replacement, []), do: []

  def replace_all(el, replacement, [el | tail]),
    do: [replacement | replace_all(el, replacement, tail)]

  def replace_all(el, replacement, [head | tail]),
    do: [head | replace_all(el, replacement, tail)]

  def index_of(el, list, index \\ 0)
  def index_of(el, [el | _tail], index), do: index
  def index_of(el, [_head | tail], index), do: index_of(el, tail, index + 1)

  def equals?([], []), do: true
  def equals?(_, []), do: false
  def equals?([], _), do: false
  def equals?([h | tail1], [h | tail2]), do: equals?(tail1, tail2)
  def equals?([_ | _], [_ | _]), do: false

  def is_even(0), do: true
  def is_even(n), do: is_odd(n - 1)

  def is_odd(1), do: true
  def is_odd(n), do: is_even(n - 1)

  def map([], _fun), do: []
  def map([head | tail], fun), do: [fun.(head)] ++ map(tail, fun)

  def reduce([], acc, _fun), do: acc
  def reduce([head | tail], acc, fun), do: reduce(tail, fun.(head, acc), fun)

  def max(list), do: reduce(list, 0, fn x, acc -> if x > acc, do: x, else: acc end)

  def all?(list, fun), do: reduce(list, true, fn x, acc -> acc && fun.(x) end)

  def reverse([]), do: []
  def reverse([head | tail]), do: reverse(tail) ++ [head]

  def zip([], []), do: []
  def zip([h1 | t1], [h2 | t2]), do: [[h1, h2]] ++ zip(t1, t2)

  def find([], _fun), do: nil

  def find([head | tail], fun), do: do_find([head | tail], fun, fun.(head))
  defp do_find([head | _tail], _, true), do: head
  defp do_find([_head | tail], fun, false), do: find(tail, fun)

  def filter([], _fun), do: []

  def filter([head | tail], fun) do
    if fun.(head) do
      [head] ++ filter(tail, fun)
    else
      filter(tail, fun)
    end
  end

  def flatten(list), do: do_flatten(list, [])

  defp do_flatten([], acc), do: acc

  defp do_flatten([head | tail], acc) when is_list(head),
    do: do_flatten(tail, acc ++ do_flatten(head, []))

  defp do_flatten([head | tail], acc), do: do_flatten(tail, acc ++ [head])

  def is_palindrome(list), do: equals?(list, reverse(list))

  def traverse(nil), do: []

  def traverse(%BinaryTree{value: value, left: left, right: right}) do
    traverse(left) ++ [value] ++ traverse(right)
  end

  def gen_list(n), do: do_gen_list(n, [])
  defp do_gen_list(0, list), do: list
  defp do_gen_list(n, list), do: do_gen_list(n - 1, [n] ++ list)
end
