# Week 386

## Task 1: Reverse Base

You are given a string representing a number,
and an integer specifying the base of that representation.

Write a function to convert this string to an integer.
(For bases greater than 10, use characters A-Z, a-z, + and / in that order.)

### Examples

#### Example 1

```
Input: $num = "101010", $base = 2
Output: 42
```

#### Example 2

```
Input: $num = "EEADEE", $base = 16
Output: 15642094
```

#### Example 3

```
Input: $num = "755", $base = 8
Output: 493
```

#### Example 4

```
Input: $num = "1BRJB", $base = 36
Output: 2228519
```

#### Example 5

```
Input: $num = "7MyqL", $base = 64
Output: 123456789
```

## Task 2: Rational Numbers

You are given two strings representing non-negative rational numbers.

Write a script to return true if the two given
rational numbers are same otherwise false.

### Examples

#### Example 1

```
Input: $rat1 = "0.(12)"
       $rat2 = "0.(121)"
Output: false
```

Expansion of "0.(12)" = 0.12 12 12 12
Expansion of "0.(121)" = 0.121 121 121

#### Example 2

```
Input: $rat1 = "0.1(23)"
       $rat2 = "0.12(32)"
Output: true
```

Expansion of "0.1(23)" = 0.1 23 23 23
Expansion of "0.12(32)" = 0.12 32 32 32

#### Example 3

```
Input: $rat1 = "0.1(234)"
       $rat2 = "0.12(342)"
Output: true
```

Expansion of "0.1(234)" = 0.1 234 234 234
Expansion of "0.12(342)" = 0.12 342 342 342

#### Example 4

```
Input: $rat1 = "12.99(99)"
       $rat2 = "13."
Output: true
```

#### Example 5

```
Input: $rat1 = "0.(123)"
       $rat2 = "0.1(231)"
Output: true
```
