defmodule RecursionexTest do
  use ExUnit.Case
  import Recursionex

  test "size" do
    assert size([]) == 0
    assert size([1, 3, 7, 4, 5]) == 5
    assert size([1, 3, 7, 4, 5, 3, 1, 8]) == 8
  end

   test "last" do
     assert last([3, 4, 7, 5, 1]) == 1
     assert last([]) == nil
   end

   test "sum" do
     assert sum([1, 3, 7, 4, 5]) == 20
     assert sum([]) == 0
   end

  # test "member?" do
  #   assert member?(4, []) == false
  #   assert member?(4, [1, 3, 7, 4, 2]) == true
  #   assert member?(5, [1, 3, 7, 4, 2]) == false
  # end

  # test "remove_first" do
  #   assert remove_first(5, [3, 4, 7, 5, 1]) == [3, 4, 7, 1]
  #   assert remove_first(5, [5, 4, 7, 5, 1]) == [4, 7, 5, 1]
  #   assert remove_first(8, [3, 4, 7, 5, 1]) == [3, 4, 7, 5, 1]
  # end

  # test "remove_all" do
  #   assert remove_all(5, [5, 4, 7, 5, 1]) == [4, 7, 1]
  #   assert remove_all(0, [5, 4, 7, 5, 1]) == [5, 4, 7, 5, 1]
  # end

  # test "replace_all" do
  #   assert replace_all(5, 3, [3, 6, 5, 4, 1]) == [3, 6, 3, 4, 1]
  #   assert replace_all(5, 3, [3, 6, 5, 4, 5]) == [3, 6, 3, 4, 3]
  #   assert replace_all(7, 3, [3, 6, 5, 4, 5]) == [3, 6, 5, 4, 5]
  # end

  # test "reverse" do
  #   assert reverse([1, 3, 4, 5, 8]) == [8, 5, 4, 3, 1]
  #   assert reverse([]) == []
  # end

  # test "index_of" do
  #   assert index_of(3, [1, 4, 3, 6, 7]) == 2
  #   assert index_of(1, [1, 4, 3, 6, 7]) == 0
  # end

  # test "equals" do
  #   assert equals?([1, 4, 5, 2], [1, 4, 5, 2]) == true
  #   assert equals?([1, 4, 5, 2], [1, 8, 5, 2]) == false
  #   assert equals?([1, 4, 5, 2], [1, 5, 2]) == false
  #   assert equals?([1, 4, 5, 2], [1, 4, 5]) == false
  # end

  # test "is_even/1 is_odd/1" do
  #   assert is_even(4) == true
  #   assert is_odd(7) == true
  # end

  # test "is_palindrome" do
  #   assert is_palindrome(["r", "a", "c", "e", "c", "a", "r"]) == true
  #   assert is_palindrome(["n", "o", "o", "n"]) == true
  #   assert is_palindrome(["a", "n", "n", "a"]) == true
  #   assert is_palindrome(["h", "e", "l", "l", "o"]) == false
  # end

  # test "map" do
  #   assert map([1, 3, 2, 6], fn x -> x * 2 end) == [2, 6, 4, 12]
  #   assert map([1, 3, 2, 6], fn x -> x + 1 end) == [2, 4, 3, 7]
  # end

  # test "reduce" do
  #   assert reduce([1, 3, 2, 6], 0, fn x, acc -> acc + x end) == 12
  # end

  # test "max" do
  #   assert max([1, 3, 2, 5, 4]) == 5
  # end

  # test "all?" do
  #   assert all?([4, 1, 2, 5, 3], &is_number/1) == true
  #   assert all?([4, 1, 2, "5", 3], &is_number/1) == false
  # end

  # test "zip" do
  #   assert zip([1, 3, 4], [3, 7, 9]) == [[1, 3], [3, 7], [4, 9]]
  # end

  # test "find" do
  #   assert find([1, 3, 4, 5, 3, 2], fn x -> x > 3 end) == 4
  # end

  # test "filter" do
  #   assert filter([1, 3, 4, 5, 3, 2, 7], fn x -> x > 3 end) == [4, 5, 7]
  # end

  # test "flatten" do
  #   assert flatten([[1, 4], [5, 6, 7], [5, [9, 10], 11]]) == [1, 4, 5, 6, 7, 5, 9, 10, 11]
  # end

  # test "inorder traversal of a binary tree" do
  #   tree =
  #     BinaryTree.new(
  #       4,
  #       BinaryTree.new(2, BinaryTree.new(1), BinaryTree.new(3)),
  #       BinaryTree.new(6, BinaryTree.new(5), BinaryTree.new(7))
  #     )

  #   assert traverse(tree) == [1, 2, 3, 4, 5, 6, 7]
  # end

  # test "gen_list" do
  #   assert gen_list(4) == [1, 2, 3, 4]
  # end

  # test "fizz buzz" do
  #   assert FizzBuzz.play(16) == [
  #            1,
  #            2,
  #            "fizz",
  #            4,
  #            "buzz",
  #            "fizz",
  #            7,
  #            8,
  #            "fizz",
  #            "buzz",
  #            11,
  #            "fizz",
  #            13,
  #            14,
  #            "fizzbuzz",
  #            16
  #          ]
  # end
end
