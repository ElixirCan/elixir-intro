# Pattern Matching

- One of the most important components of elixir is pattern matching 
- Pattern matching allows you to have multiple functions of the same name but will choose the correct function based off of the data type 
- In other programming languages this ```=``` operator is an assignment operator. In Elixir however this is the match operator. 

In elixir when we say ``` x = 1 ``` it also means that ``` 1 = x ``` this is much different from an assignment of x = 1. 


---

Let's look at this example 

```elixir
iex> x = 10
10
iex> 10 = x
10
iex> 1 = x
** (MatchError) no match of right hand side value: 10
```

- ```10 = x``` is good comparrison but when both sides don't match a MatchError is raised because a variable can only be assigned on the left side. So with ```1 = x``` it raised a MatchError due to the fact that we aren't assigning 1 to x so it is seeing if x which is equal to 10 matches with 1

---

- Patern matching becomes very useful for tools such as 