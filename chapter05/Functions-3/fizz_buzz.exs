fizz_buzz_helper = fn
  (0,0,_) -> 'FizzBuzz'
  (0,_,_) -> 'Fizz'
  (_,0,_) -> 'Buzz'
  (_,_,foo) -> foo
end

fizz_buzz = fn
  (n) -> fizz_buzz_helper.(rem(n,3), rem(n,5), n)
end

10..16 |> fn(a) -> IO.puts(a) end
