# Exercise: Functions-1

**Write a function that takes three arguments. If the first two are zero, return "FizzBuzz." If the first is zero, return "Fizz." If the second is zero, return "Buzz." Otherwise, return the third argument. Do not use any language features that we haven't yet covered in this book.**

```
iex(10)> fizz_buzz = fn
...(10)> (0,0,_) -> "FizzBuzz"
...(10)> (0,_,_) -> "Fizz"
...(10)> (_,0,_) -> "Buzz"
...(10)> (_,_,a) -> a
...(10)> end
```
