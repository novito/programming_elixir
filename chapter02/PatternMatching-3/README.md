# Exercise: PatternMatching-3

**If you assume the variable a initially contains the value 2, which of the
following will match?**

```
- [a,b,a] = [1,2,3] # No. 
- [a,b,a] = [1,1,2] # No. 
- a = 1 # Yes, because we are rebinding
- ^a = 2 # No, because we are forcing to use the existing value of a, and that
  is 1
- ^a = 1 # Yes, a was binded to 1
- ^a = 2 - 1 # Yes. a matches 2 - 1 = 1
```
