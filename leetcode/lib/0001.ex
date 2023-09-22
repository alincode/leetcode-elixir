defmodule Leetcode_0001 do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    Enum.reduce_while(nums, {%{}, 0}, fn n, {map, i} ->
      complement = Map.get(map, target - n)

      if complement do
        {:halt, [complement, i]}
      else
        {:cont, {Map.put(map, n, i), i + 1}}
      end
    end)
  end
end
