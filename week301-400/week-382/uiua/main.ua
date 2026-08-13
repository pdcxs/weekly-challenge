# Task 1
C ← =⊸⁅√ # check square number
# We will go from one state to final state
# each state is: {fixed_nums others}
# we need rotate others and check whether is possible
N ← ⨬(
  (
    ⟜⊣⊙(⊸≡⊢≡↻⊃(⇡⧻|¤))°□₂
    ⊙(▽≡C+)
    ≡(□₂⊂)¤⊙≡⊃(⊢|↘1)
  )
| []
)⊸(≍[]°□⊣)
G  ← ×⊃(=0⧻°□⊣|C+◇⊃(⊢|⊣)⊢)
F₁ ← ⨬([]|°□⊢⊣⊢)>0⊸⧻path(N|G)⊂□[1]□↘1+1⇡
F₁32
# ⍜now(F₁34)

# Use path is slow, maybe recur can be faster?
# I tried following program
# ```uiua
# # Experimental!
# N ← ⨬(
#   (
#     ⟜⊣⊙(⊸≡⊢≡↻⊃(⇡⧻|¤))°□₂
#     ⊙(▽≡C+)
#     ≡(□₂⊂)¤⊙≡⊃(⊢|↘1)
#   )
# | []
# )⊸(≍[]°□⊣)
# M ← ⨬(□[]|⊢▽)>0⊸/+⊸≡◇(¬≍[])
# B ← (×C+⊃(⊢|⊣)⊙(≍[]))°□₂
# S ← {[1] ↘1+1⇡ 34}
# F ← °□recur(B|N|M)⊂∩□[1]↘1+1⇡
# ⍜now(F 34)
# ```uiua
# Still very slow
# It is hard to write simple prog to implement lazy search like haskell

# Task 2
F₂ ← ⍜▽(⨬(⋅[""]|⬚@0°⋕₂⇡˜ⁿ2)⊸>0⧻)⊸=@?

┌─╴test
  ˙⍤ ≍ ["01000" "01010" "01100" "01110"] F₂ "01??0"
  ˙⍤ ≍ ["101"] F₂ "101"
  ˙⍤ ≍ ["000" "001" "010" "011" "100" "101" "110" "111"] F₂ "???"
  ˙⍤ ≍ ["0010" "0110"] F₂ "0?10"
  ˙⍤ ≍ ["0010" "0110"] F₂ "0?10"
  ˙⍤ ≍ ["10100" "10110" "11100" "11110"] F₂ "1?1?0"
└─╴
