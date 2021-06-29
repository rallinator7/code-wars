defmodule Solution do
  def minValue(numbers) do
    sorted = Enum.sort(numbers)
    String.to_integer(getNext(sorted))
  end

  def getNext(numbers) do
    head = Enum.at(numbers, 0)

    new = Enum.reject(numbers, fn x -> x == head end)

    if new == [] do
      Integer.to_string(head)
    else
      Integer.to_string(head) <> getNext(new)
    end
  end
end

IO.puts(Solution.minValue([4,3,2]))
