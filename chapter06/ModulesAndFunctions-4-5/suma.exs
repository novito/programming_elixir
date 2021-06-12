# Implement and run a function sum(n) that uses recursion to calcualte the sum
# of the integers from 1 to n. You'll need to write this function inside
# a module in a separate file. Then load up iex, compile that file, and try
# your function.
#
# iex suma.exs ; Math.sum(5) #=> 15

defmodule Math do
  def sum(0) do
    0
  end

  def sum(n) do
    n + sum(n-1)
  end
end
