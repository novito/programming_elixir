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
