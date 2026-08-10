# Week 385

## Taks 1:

You are given two sentences.
Write a script to return list of
all uncommon words, order is not important.

### Examples

#### Example 1

```
Input: $sentence1 = "apple banana apple"
       $sentence2 = "banana orange"
Output: ("orange")
```

#### Example 2

```
Input: $sentence1 = "cat dog"
       $sentence2 = "bird fish"
Output: ("cat", "dog", "bird", "fish")
```

#### Example 3

```
Input: $sentence1 = "the quick brown fox"
       $sentence2 = "the quick"
Output: ("brown", "fox")
```

#### Example 4

```
Input: $sentence1 = "hello"
       $sentence2 = "hello"
Output: ()
```

#### Example 5

```
Input: $sentence1 = "blue blue red"
       $sentence2 = "red green green yellow"
Output: ("yellow")
```

## Task 2:

You are given a valid parentheses string.
Write a script to return the string after
removing the outermost parentheses of every
primitive string in the primitive
decomposition of the given string.

### Examples

#### Example 1

```
Input: $str = "()()()"
Output: ""

Primitive Decomposition: "()" + "()" + "()"
```

#### Example 2

```
Input: $str = "(((())))"
Output: "((()))"

Primitive Decomposition: "(((())))"
```

#### Example 3

```
Input: $str = "(()())(())"
Output: "()()()"

Primitive Decomposition: "(()())" + "(())"
```

#### Example 4

```
Input: $str = "()((()))()"
Output: "(())"

Primitive Decomposition: "()" + "((()))" + "()"
```

#### Example 5

```
Input: $str = "(()(()))(()())"
Output: "()(())()()"

Primitive Decomposition: "(()(()))" + "(()())"
```
