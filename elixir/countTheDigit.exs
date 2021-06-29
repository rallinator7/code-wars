defmodule Countdigit do

  def nb_dig(n, d) do
    Enum.reduce(0..n, [], fn(x, acc) -> [(x*x) | acc] end )
    |> Enum.reduce("", fn(x, acc) -> acc <> Integer.to_string(x) end)
    |> String.graphemes
    |> Enum.count(& &1 == Integer.to_string(d))
  end

end

IO.puts(Countdigit.nb_dig(25, 1))
