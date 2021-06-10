# Exercise: PatternMatching-1

**Which of the following will match?**

```
- a = [1,2,3] # Yes. a matches to [1,2,3]
- a = 4 # Yes, rebinding
- 4 = a # Yes, since a matched to 4, 4 will also match to 4
- [a,b] = [1,2,3] # No. a won't match to 1
- a = [[1,2,3]] # Yes, rebinding
- [[a]] = [[1,2,3]] # No. if we had [[a|t]] = [[1,2,3]] then yes, a would be
  1 and t [2,3]
```

# Exercise: PatternMatching-2

**Which of the following will match**

```
- [a,b,a] = [1,2,3] # No. a can't match to 1 and also 3
- [a,b,a] = [1,1,2] # No. a can't match to 1 and also 2
- [a,b,a] = [1,2,1] # Yes. a matches to 1 and b to 2
```

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
