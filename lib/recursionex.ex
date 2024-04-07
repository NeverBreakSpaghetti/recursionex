defmodule Recursionex do

  def size([]) do 0 end
  def size ([_head | tail]) do 1 + size(tail) end

end