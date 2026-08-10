# Week 384

## Task 1

You are given a number and a base integer.

Write a script to convert the given number in the given base integer.

### Examples

#### Example 1

```
Input: $num = 42, $base = 2
Output: 101010
```

#### Example 2

```
Input: $num = 15642094, $base = 16
Output: EEADEE
```

#### Example 3

```
Input: $num = 493, $base = 8
Output: 755
```

#### Example 4

```
Input: $num = 2228519, $base = 36
Output: 1BRJB
```

Base 36 uses numbers 0-9 and letters A-Z.

#### Example 5

```
Input: $num = 123456789, $base = 64
Output: 7MyqL
```

Base 64 (using 0-9, A-Z, a-z, and extra symbols like + and /)

## Task 2

You are given a binary string.

Write a script to return all non-empty substrings (distinct) that have the same number of 0’s and 1’s, and all the 0’s and all the 1’s in these substrings are grouped consecutively.

### Examples

#### Example 1

```
Input: $binary = "0101"
Output: ("01", "10")
```

#### Example 2

```
Input: $binary = "000111"
Output: ("000111", "0011", "01")
```

#### Example 3

```
Input: $binary = "000011"
Output:  ("0011", "01")
```

#### Example 4

```
Input: $binary = "10011100"
Output: ("10", "0011", "01", "1100")
```

#### Example 5

```
Input: $binary = "00000"
Output: ()
```
