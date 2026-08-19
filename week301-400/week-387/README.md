# Week 387

## Task 1: Rearrange Binary String

You are given a binary string string.

Write a script to re-arrange the given binary string
that all occurrences of “01” are simultaneously replaced
with “10” until no occurrences of “01” exist.
Finally return the total steps needed.

### Examples

#### Example 1

```
Input: $str = "111000"
Output: 0
```

The string already has all 1s on the left and 0s on the right.
There are no occurrences of "01", so zero step needed.

#### Example 2

```
Input: $str = "00011"
Output: 4
```

Step 1: "00101"
Step 2: "01010"
Step 3: "10100"
Step 4: "11000"

#### Example 3

```
Input: $str = "01011"
Output: 3
```

Step 1: "10101"
Step 2: "11010"
Step 3: "11100"

#### Example 4

```
Input: $str = "010101"
Output: 3
```

Step 1: "101010"
Step 2: "110100"
Step 3: "111000"

#### Example 5

```
Input: $str = "00001"
Output: 4
```

Step 1: "00010"
Step 2: "00100"
Step 3: "01000"
Step 4: "10000"

## Task 2: Atoms Count

You are given a chemical formula with elements, numbers, and parentheses.

Write a script to count the total number of each type of atom by expanding
all grouped multipliers. Then, format and return the final inventory as a
single string sorted alphabetically by element name,
including the total count only if it is greater than 1.

### Examples

#### Example 1

```
Input: $formula = "((N2O)3(H2O)2)2"
Output: "H8N12O10"
```

Step 1: Expand the innermost parentheses

```
(N2O)3 => N = 2*3 = 6, O = 1*3 = 3 => N6O3
(H2O)2 => H = 2*2 = 4, O = 1*2 = 2 => H4O2
```

Step 2: Combine inside the outer parentheses\
Formula becomes: (N6O3 H4O2)2\
Sum up identical elements inside: (N6 H4 O5)2

Step 3: Apply the outer multiplier

```
N = 6*2 = 12
H = 4*2 = 8
O = 5*2 = 10
```

Step 4: Sort alphabetically and format\
Alphabetical order: H, N, O\
Counts: H: 8, N: 12, O: 10

#### Example 2

```
Input: $formula = "Mg3(PO4)2"
Output: "Mg3O8P2"
```

Step 1: Parse ungrouped elements\
Mg3 => Mg = 3

Step 2: Expand parentheses (PO4)2

```
P = 1*2 = 2
O = 4*2 = 8
```

Step 3: Total up counts\
Mg = 3\
P = 2\
O = 8

Step 4: Sort alphabetically and format\
Alphabetical order: Mg, O, P\
Counts: Mg: 3, O: 8, P: 2

#### Example 3

```
Input: $formula = "(((H)2)3)4"
Output: "H24"
```

Step 1: Expand innermost level (H)2\
`H = 1*2 = 2 => formula becomes ((H2)3)4`

Step 2: Expand middle level (H2)3\
`H = 2*3 = 6 => formula becomes (H6)4`

Step 3: Expand outer level (H6)4\
`H = 6*4 = 24`

Step 4: Sort alphabetically and format\
Single element: H: 24

#### Example 4

```
Input: $formula = "NaCl3(O2(S10)2)2Mg"
Output: "Cl3MgNaO4S40"
```

Step 1: Expand innermost parentheses (S10)2\
`S = 10*2 = 20 => inner formula becomes => O2S20`

Step 2: Expand outer parentheses (O2S20)2

```
O = 2*2 = 4
S = 20*2 = 40
```

Step 3: Combine all parts\
Ungrouped start: Na (Na = 1), Cl3 (Cl = 3)\
Expanded middle: O = 4, S = 40\
Ungrouped end: Mg (Mg = 1)

Step 4: Sort alphabetically and format\
Alphabetical order: Cl (3), Mg (1), Na (1), O (4), S (40)\
Omit the number 1 for Mg and Na.

#### Example 5

```
Input: $formula = "Z2Y3(X2W)2"
Output: "W2X4Y3Z2"
```

Step 1: Parse ungrouped elements

```
Z2 => Z = 2
Y3 => Y = 3
```

Step 2: Expand parentheses (X2W)2

```
X = 2*2 = 4
W = 1*2 = 2
```

Step 3: Total up counts\
`W = 2, X = 4, Y = 3, Z = 2`

Step 4: Sort alphabetically and format\
Alphabetical order: W (2), X (4), Y (3), Z (2)
