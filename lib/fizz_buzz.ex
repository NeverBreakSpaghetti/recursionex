defmodule FizzBuzz do
  def play(n) do
    input = build_input([1], n)
    do_play([], input)
  end

  defp do_play(res, []), do: res

  defp do_play(res, [h | t]) do
    ""
    |> fizz(h)
    |> buzz(h)
    |> number(h)
    |> then(fn fb -> res ++ [fb] end)
    |> do_play(t)
  end

  defp fizz(s, h) when rem(h, 3) == 0, do: s <> "fizz"
  defp fizz(s, _), do: s

  defp buzz(s, h) when rem(h, 5) == 0, do: s <> "buzz"
  defp buzz(s, _), do: s

  defp number("", n), do: n
  defp number(fb, _), do: fb

  defp build_input([h | t], max) when h == max, do: reverse([h | t])
  defp build_input([h | t], max), do: build_input([h + 1, h | t], max)

  defp reverse([]), do: []
  defp reverse([head | tail]), do: reverse(tail) ++ [head]
end
