defmodule CountBits do
  def bits(n) do
    for(<<bit::1 <- :binary.encode_unsigned(n)>>, do: bit) |> Enum.sum
  end
end

IO.puts(CountBits.bits(1234))
