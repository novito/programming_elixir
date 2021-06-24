defmodule ListsAndRecursion do
  # 1. Write a  mapsum function that takes a list and a function. It applies the
  # function to each element of the list and then sums the result, so
  # MyList.mapsum([1,2,3], &(&1 * &1)) #=> 14
  def mapsum(list, function) do
    _mapsum(list, function, 0)
  end

  defp _mapsum([head | tail], function, acc) do
    acc = acc + function.(head)
    _mapsum(tail, function, acc)
  end

  defp _mapsum([], _function, acc) do
    acc
  end

  # 2. Write a max(list) that returns the element with the maximum value in the
  # list. (this is slightier trickier than it sounds)
  def max(list) do
    _max(list)
  end

  defp _max([a]) do
    a
  end

  defp _max([a,b | tail]) when a > b or a == b do
    _max([a | tail])
  end

  defp _max([a,b | tail]) when b > a do
    _max([b | tail])
  end

  # 3. An Elixir single-quoted string is actually a list of individual
  # character codes. Write a caesar(list, n) function that adds n to each list
  # element, wrapping if the addition results in a character greater than z
  def caesar([head | tail], n) when head + n > ?z do
    num_characters = 26
    new_char = (head + n) - num_characters
    [new_char | caesar(tail, n)]
  end

  def caesar([head | tail], n) do
    [head + n | caesar(tail, n)]
  end

  def caesar([], _) do
    []
  end
end
