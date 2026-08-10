# Task 1
C ← =⊸⁅√ # check square number
# We will go from one state to final state
# each state is: {fixed_nums others}
# we need rotate others and check whether is possible
N ← (
  ⊃(¤|◇⊣)°⊟    # decouple, unbox, extract last fixed num
  ◡(⋅⋅(>0⧻°□)) # check whether unfixed-nums are empty
  ⨬([]◌◌◌      # there's  no any unfixed nums any more, return []
  | (          # there are still some unfixed nums, get the next neighbors
     ⊙(
        ⊙(⊸⊢◇(≡↻⊃(⇡◇⧻|¤))) # get rotates
        ≡⊃(⊢|□↘1)▽C+       # check the first number add to last fixed number is square
      )
     ≡(⊂□◇⊂)
    )
  )
)
G ← ×⊃(=0⧻°□⊣|C+◇⊃(⊢|⊣)⊢)

F₁ ← ⨬([]|°□⊢⊣⊢)>0⊸⧻path(N|G)⊂□[1]□↘1+1⇡
# F₁32

# Use path is slow, maybe recur can be faster?

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
