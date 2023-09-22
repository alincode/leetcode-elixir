defmodule Leetcode_0125 do
  @spec is_palindrome(s :: String.t()) :: boolean
  def is_palindrome(s) do
    s
    |> String.downcase()
    |> String.to_charlist()
    |> Enum.filter(&is_alphanumeric?/1)
    |> palindrome?
  end

  def palindrome?(charlist), do: charlist == Enum.reverse(charlist)

  def is_alphanumeric?(char) do
    a = hd('a')
    z = hd('z')
    zero = hd('0')
    nine = hd('9')
    (char >= a and char <= z) or (char >= zero and char <= nine)
  end
end
