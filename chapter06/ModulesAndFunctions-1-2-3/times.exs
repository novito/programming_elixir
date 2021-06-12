# Exercise: Extend the Times module with a triple function that multiplies its
# parameter by three
# Exercise: Add a quadruple function. (Maybe it could call the double
# function...)
# Exercise: Run the result in iex. Use both techniques to compile the file
# Technique 1:
# From terminal, I run: iex times.exs, which compiles and loads the file before
# displaying an Elixir prompt.
# Once in iex, I can run c `times.exs` which compiles the source file and
# lods it into iex
defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(n) * double(n) 
end

IO.puts(Times.quadruple(4))
