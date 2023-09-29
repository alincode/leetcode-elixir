defmodule Leetcode_0020_Test do
  use ExUnit.Case
  doctest Leetcode_0020

  test "example 1" do
    assert Leetcode_0020.is_valid("()") == true
  end

  test "example 2" do
    assert Leetcode_0020.is_valid("()[]{}") == true
  end

  test "example 3" do
    assert Leetcode_0020.is_valid("(]") == false
  end
end
