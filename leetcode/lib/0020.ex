defmodule Leetcode_0020 do
  @open_brackets ~c(([{)

  @spec is_valid(s :: String.t()) :: boolean
  def is_valid(s) do
    :binary.bin_to_list(s)
    |> Enum.reduce_while([], fn
      char, acc when char in @open_brackets ->
        # Flow 1
        {:cont, [close_bracket(char) | acc]}

      char, [bracket | rest] when char == bracket ->
        # Flow 2
        {:cont, rest}

      _, _ ->
        # Flow 3
        {:halt, [nil]}
    end)
    |> Enum.empty?()
  end

  defp close_bracket(?(), do: ?)
  defp close_bracket(?{), do: ?}
  defp close_bracket(?[), do: ?]
end

# Flow 1: 這個函數檢查當前字符是否屬於開括號（@open_brackets 中的字符）。如果是，它將匹配的關括號添加到累積列表中。
# Flow 2: 它檢查當前字符是否與堆疊（累積的列表）中的頂部字符匹配。如果匹配，它將從堆疊中移除該項，表示該組括號已經匹配成功。
# Flow 3它處理任何不匹配開括號或關括號的字符，並且返回 {:halt, [nil]}，表示括號不匹配，運算停止。
