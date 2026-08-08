B ← ×⊃(≥⊢|≤⊣) # In range check
# get branch number
N ← -1/+⊟₅⊃(<10|×2B10_35|×3B36_61|×4=62|×5=63)
# convert to character
C  ← ⨬(+@0|+@A-10|+@a-36|⋅@+|⋅@/)⊸N
F₁ ← ⨬(≡C⇌˜⊥|"0")⊸=0

G ← +⊃(≍⊙⋅∘|≍⋅⊙∘)⊸⇌⊸⍆
F₂ ← (
  # get all subsequences
  /◇⊂≡(□⧈□)⊙¤↘2⇡+1⊸⧻
  # filter: same ones and zeros and deduplicate
  ◴▽=⊸≡(◇(⊃(/+=@0|/+=@1)))
  # filter: zeros and ones are grouped together
  ▽⊸(≡◇G)
)

┌─╴test
  ˙⍤ ≍ "101010" F₁42 2
  ˙⍤ ≍ "EEADEE" F₁15642094 16
  ˙⍤ ≍ "755" F₁493 8
  ˙⍤ ≍ "1BRJB" F₁2228519 36
  ˙⍤ ≍ "7MyqL" F₁123456789 64
  ˙⍤ ≍ ⍆{"01" "10"} ⍆F₂"0101"
  ˙⍤ ≍ ⍆{"000111" "0011" "01"} ⍆F₂"000111"
  ˙⍤ ≍ ⍆{"0011" "01"} ⍆F₂"000011"
  ˙⍤ ≍ ⍆{"10" "0011" "01" "1100"} ⍆F₂"10011100"
  ˙⍤ ≍ {} F₂"00000"
└─╴
