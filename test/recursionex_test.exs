defmodule RecursionexTest do
  use ExUnit.Case
  import Recursionex

  test "member?" do
    assert member?(4, [1, 3, 7, 4, 2]) == true
    assert member?(5, [1, 3, 7, 4, 2]) == false
  end

  test "size" do
    assert size([1, 3, 7, 4, 5]) == 5
  end

  test "sum" do
    assert sum([1, 3, 7, 4, 5]) == 20
  end

  test "first" do
    assert first([3, 4, 7, 5, 1]) == 3
  end

  test "last" do
    assert last([3, 4, 7, 5, 1]) == 1
  end

  test "remove_first" do
    assert remove_first(5, [3, 4, 7, 5, 1]) == [3, 4, 7, 1]
    assert remove_first(5, [5, 4, 7, 5, 1]) == [4, 7, 5, 1]
  end

  test "remove_all" do
    assert remove_all(5, [5, 4, 7, 5, 1]) == [4, 7, 1]
  end

  test "replace" do
    assert replace(5, 3, [3, 6, 5, 4, 1]) == [3, 6, 3, 4, 1]
    assert replace(5, 3, [3, 6, 5, 4, 5]) == [3, 6, 3, 4, 3]
  end

  test "map" do
    assert map([1, 3, 2, 6], fn x -> x * 2 end) == [2, 6, 4, 12]
    assert map([1, 3, 2, 6], fn x -> x + 1 end) == [2, 4, 3, 7]
  end

  test "reduce" do
    assert reduce([1, 3, 2, 6], 0, fn x, acc -> acc + x end) == 12
  end

  test "max" do
    assert max([1, 3, 2, 5, 4]) == 5
  end

  test "all?" do
    assert all?([4, 1, 2, 5, 3], &is_number/1) == true
    assert all?([4, 1, 2, "5", 3], &is_number/1) == false
  end

  test "reverse" do
    assert reverse([1, 3, 4, 5, 8]) == [8, 5, 4, 3, 1]
  end

  test "zip" do
    assert zip([1, 3, 4], [3, 7, 9]) == [[1, 3], [3, 7], [4, 9]]
  end

  test "find" do
    assert find([1, 3, 4, 5, 3, 2], fn x -> x > 3 end) == 4
  end

  test "index_of" do
    assert index_of(3, [1, 4, 3, 6, 7]) == 2
  end

  test "filter" do
    assert filter([1, 3, 4, 5, 3, 2, 7], fn x -> x > 3 end) == [4, 5, 7]
  end
end
