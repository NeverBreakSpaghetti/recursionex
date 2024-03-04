defmodule Recursionex do
  @doc """
  last?
  Prima lo scrivimo con il case usando la funzione size
  """

  def size([]), do: 0
  def size([_head | tail]), do: 1 + size(tail)

  def last([last]), do: last
  def last([_head | tail]), do: last(tail)

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  @doc """
  member?
  Prima lo implemento con l'if element == head, poi toglgo l'if
  """
  def member?(_element, []), do: false
  def member?(element, [element | _tail]), do: true
  def member?(element, [_head | tail]), do: member?(element, tail)

  def remove_first(element, [element | tail]), do: tail
  def remove_first(element, [head | tail]), do: [head | remove_first(element, tail)]

  def remove_all(_element, []), do: []
  def remove_all(element, [element | tail]), do: remove_all(element, tail)
  def remove_all(element, [head | tail]), do: [head | remove_all(element, tail)]

  def replace_all(_element, _replacement, []), do: []

  def replace_all(element, replacement, [element | tail]),
    do: [replacement | replace_all(element, replacement, tail)]

  def replace_all(element, replacement, [head | tail]),
    do: [head | replace_all(element, replacement, tail)]

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

  def index_of(element, list, start_from \\ 0)
  def index_of(element, [element | _tail], start_from), do: start_from
  def index_of(element, [_head | tail], start_from), do: index_of(element, tail, start_from + 1)

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

  def is_palindrome(list), do: do_check_palindrome(list, reverse(list))

  defp do_check_palindrome([], []), do: true
  defp do_check_palindrome([h | t1], [h | t2]), do: do_check_palindrome(t1, t2)
  defp do_check_palindrome([_h1 | _], [_h2 | _]), do: false

  def traverse(nil), do: []

  def traverse(%BinaryTree{value: value, left: left, right: right}) do
    traverse(left) ++ [value] ++ traverse(right)
  end

  def is_even(0), do: true
  def is_even(n), do: is_odd(n - 1)

  def is_odd(1), do: true
  def is_odd(n), do: is_even(n - 1)

  def gen_list(n), do: do_gen_list(n, [])
  defp do_gen_list(0, list), do: list
  defp do_gen_list(n, list), do: do_gen_list(n - 1, [n] ++ list)

end
