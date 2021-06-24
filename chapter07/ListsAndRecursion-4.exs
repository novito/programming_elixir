defmodule MyList do
  # Write a function MyList.span(from,to) that returns a list of the numbers
  # from `from` up to `to`
  def span(from, to) do
    _span(from, to, [])
  end

  defp _span(from, to, list) when from < to do
    _span(from + 1, to, list ++ [from])
  end

  defp _span(from, to, list) when from === to do
    list ++ [from]
  end
end
