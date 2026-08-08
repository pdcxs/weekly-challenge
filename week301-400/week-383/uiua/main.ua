I ← ˜∊⊙°□              # is current string in each pair
C ← >0/+×⊃(≡I¤⊙◌|≡I¤◌) # is two string in same pair
# use fill to align arrays
# check whether in same pair or just match
# all words should be similar
F₁ ← /×≡(+⊃(C|≍))°⊟⬚(□"")⊟⊙⊙¤

# Parse RGB
P  ← ≡⋕₁₆↯3_2↘1
R  ← ⊡⊢⊚=⊸/↧⌵⤚-[0 51 102 153 204 255]
F₂ ← ⊂@#/⊂⬚@0≡(⌵°⋕₁₆R)P

┌─╴test
  ˙⍤ F₁ {"great" "acting"} {"fine" "drama"} {{"great" "fine"} {"acting" "drama"}}
  ˙⍤ ¬ F₁ {"apple" "pie"} {"banana" "pie"} {{"apple" "peach"} {"peach" "banana"}}
  ˙⍤ F₁ {"perl4" "python"} {"raku" "python"} {{"perl4" "perl5" "raku"}}
  ˙⍤ ¬ F₁ {"enjoy" "challenge"} {"love" "weekly" "challenge"} {{"enjoy" "love"}}
  ˙⍤ F₁ {"fast" "car"} {"quick" "vehicle"} {{"quick" "fast"} {"vehicle" "car"}}
  ˙⍤ ≍ "#FF99CC" F₂ "#F4B2D1"
  ˙⍤ ≍ "#00FFCC" F₂ "#15E6E5"
  ˙⍤ ≍ "#003366" F₂ "#191A65"
  ˙⍤ ≍ "#336633" F₂ "#2D5A1B"
  ˙⍤ ≍ "#00FF66" F₂ "#00FF66"
└─╴
