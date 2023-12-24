defmodule BinaryTree do
  defstruct [:value, :left, :right]

  def new(value, left \\ nil, right \\ nil) do
    %BinaryTree{value: value, left: left, right: right}
  end
end
