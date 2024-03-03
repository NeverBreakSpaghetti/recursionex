# defmodule FizzBuzz do
#   def play(n), do: do_play(Recursionex.gen_list(n), [])

#   defp do_play([], acc), do: acc
#   defp do_play([n | rest], acc) do
#     current =
#       ""
#       |> fizz(n)
#       |> buzz(n)
#       |> number(n)

#     do_play(rest, acc ++ [current])
#   end

#   defp fizz(s, h) when rem(h, 3) == 0, do: s <> "fizz"
#   defp fizz(s, _), do: s

#   defp buzz(s, h) when rem(h, 5) == 0, do: s <> "buzz"
#   defp buzz(s, _), do: s

#   defp number("", n), do: n
#   defp number(fb, _), do: fb
# end
