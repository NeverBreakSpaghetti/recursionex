defmodule FizzBuzz do
  def play(n) do
    do_play([], 1, n + 1)
  end

  defp do_play(res, current, max) when current == max, do: res

  defp do_play(res, current, max) do
    ""
    |> fizz(current)
    |> buzz(current)
    |> number(current)
    |> then(fn fb -> res ++ [fb] end)
    |> do_play(current + 1, max)
  end

  defp fizz(s, h) when rem(h, 3) == 0, do: s <> "fizz"
  defp fizz(s, _), do: s

  defp buzz(s, h) when rem(h, 5) == 0, do: s <> "buzz"
  defp buzz(s, _), do: s

  defp number("", n), do: n
  defp number(fb, _), do: fb
end
