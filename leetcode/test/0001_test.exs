defmodule Leetcode_0001_Test do
  use ExUnit.Case
  doctest Leetcode_0001

  test "example 1" do
    assert Leetcode_0001.two_sum([2, 7, 11, 15], 9) == [0, 1]
  end

  test "example 2" do
    assert Leetcode_0001.two_sum([3, 2, 4], 6) == [1, 2]
  end

  test "example 3" do
    assert Leetcode_0001.two_sum([3, 3], 6) == [0, 1]
  end
end
