# Write a function prefix that takes a string. It should return a new function
# that takes a second string. WHen that second function is called, it will
# return a string containing the first string, a space, and the second string.
prefix = fn (str) -> fn (second_str) ->  "#{str} #{second_str}" end end

IO.puts(prefix.('test').('prova'))
