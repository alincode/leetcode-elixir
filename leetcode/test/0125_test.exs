defmodule Leetcode_0125_Test do
  use ExUnit.Case
  doctest Leetcode_0125

  test "example 1" do
    assert Leetcode_0125.is_palindrome("A man, a plan, a canal: Panama") == true
  end

  test "example 2" do
    assert Leetcode_0125.is_palindrome("race a car") == false
  end

  test "example 3" do
    assert Leetcode_0125.is_palindrome(" ") == true
  end
end
