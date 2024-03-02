defmodule RecursionexTest do
  use ExUnit.Case
  import Recursionex

  test "size" do
    assert size([1, 3, 7, 4, 5]) == 5
  end

  @tag :skip
  test "last" do
    assert last([3, 4, 7, 5, 1]) == 1
  end

  @tag :skip
  test "sum" do
    assert sum([1, 3, 7, 4, 5]) == 20
  end

  @tag :skip
  test "member?" do
    assert member?(4, [1, 3, 7, 4, 2]) == true
    assert member?(5, [1, 3, 7, 4, 2]) == false
  end

  @tag :skip
  test "remove_first" do
    assert remove_first(5, [3, 4, 7, 5, 1]) == [3, 4, 7, 1]
    assert remove_first(5, [5, 4, 7, 5, 1]) == [4, 7, 5, 1]
  end

  @tag :skip
  test "remove_all" do
    assert remove_all(5, [5, 4, 7, 5, 1]) == [4, 7, 1]
  end

  @tag :skip
  test "replace" do
    assert replace(5, 3, [3, 6, 5, 4, 1]) == [3, 6, 3, 4, 1]
    assert replace(5, 3, [3, 6, 5, 4, 5]) == [3, 6, 3, 4, 3]
  end

  @tag :skip
  test "reverse" do
    assert reverse([1, 3, 4, 5, 8]) == [8, 5, 4, 3, 1]
  end

  @tag :skip
  test "map" do
    assert map([1, 3, 2, 6], fn x -> x * 2 end) == [2, 6, 4, 12]
    assert map([1, 3, 2, 6], fn x -> x + 1 end) == [2, 4, 3, 7]
  end

  @tag :skip
  test "reduce" do
    assert reduce([1, 3, 2, 6], 0, fn x, acc -> acc + x end) == 12
  end

  @tag :skip
  test "max" do
    assert max([1, 3, 2, 5, 4]) == 5
  end

  @tag :skip
  test "all?" do
    assert all?([4, 1, 2, 5, 3], &is_number/1) == true
    assert all?([4, 1, 2, "5", 3], &is_number/1) == false
  end

  @tag :skip
  test "zip" do
    assert zip([1, 3, 4], [3, 7, 9]) == [[1, 3], [3, 7], [4, 9]]
  end

  @tag :skip
  test "find" do
    assert find([1, 3, 4, 5, 3, 2], fn x -> x > 3 end) == 4
  end

  @tag :skip
  test "index_of" do
    assert index_of(3, [1, 4, 3, 6, 7]) == 2
  end

  @tag :skip
  test "filter" do
    assert filter([1, 3, 4, 5, 3, 2, 7], fn x -> x > 3 end) == [4, 5, 7]
  end

  @tag :skip
  test "flatten" do
    assert flatten([[1, 4], [5, 6, 7], [5, [9, 10], 11]]) == [1, 4, 5, 6, 7, 5, 9, 10, 11]
  end

  @tag :skip
  test "is_palindrome" do
    assert is_palindrome(["r", "a", "c", "e", "c", "a", "r"]) == true
    assert is_palindrome(["n", "o", "o", "n"]) == true
    assert is_palindrome(["a", "n", "n", "a"]) == true
    assert is_palindrome(["h", "e", "l", "l", "o"]) == false
  end

  @tag :skip
  test "inorder traversal of a binary tree" do
    tree =
      BinaryTree.new(
        4,
        BinaryTree.new(2, BinaryTree.new(1), BinaryTree.new(3)),
        BinaryTree.new(6, BinaryTree.new(5), BinaryTree.new(7))
      )

    assert traverse(tree) == [1, 2, 3, 4, 5, 6, 7]
  end

  @tag :skip
  test "is_even/1 is_odd/1" do
    assert is_even(4) == true
    assert is_odd(7) == true
  end

  @tag :skip
  test "gen_list" do
    assert gen_list(4) == [1, 2, 3, 4]
  end

  @tag :skip
  test "fizz buzz" do
    assert FizzBuzz.play(16) == [
             1,
             2,
             "fizz",
             4,
             "buzz",
             "fizz",
             7,
             8,
             "fizz",
             "buzz",
             11,
             "fizz",
             13,
             14,
             "fizzbuzz",
             16
           ]
  end
end
