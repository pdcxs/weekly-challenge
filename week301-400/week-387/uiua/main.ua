S ← ⍜regex≡⋅"10""01" # replace all
# check whether replaced matched original
A ← ⊃(⋅∘|+)⊙(¬⤚≍⊸S)
# initial times is zero, and repeat
F ← ⊙◌◌⍢(A◌|∘)A0

┌─╴Part₁
  ˙⍤=0 F "111000"
  ˙⍤=4 F "00011"
  ˙⍤=3 F "01011"
  ˙⍤=3 F "010101"
  ˙⍤=4 F "00001"
└─╴

# expand most inner parathesis
E ← ⍜regex≡(□♭˜↯⊙⋕°□₂↘1)"\\(([^^()]+)\\)(\\d+)?"
# repeat expand until no parathesis
B ← ◌⍢(/+⊸=@(E◌|>0)/+⊸=@(
G ← (
  # find all atoms and their counts
  ⬚"1"regex"([A-Z][a-z]?)(\\d+)?"B
  # sort, group, combine same atoms
  ≡(⊟⊃(⊢⊢|/+≡⊣)°□)⊕□⊛⊸≡⊢⍆≡(□₂⊙⋕°□₂↘1)
  # join atoms and their counts
  /◇⊂≡(□⊂⊙°⋕°□₂)
  # remove count number 1
  ⍜regex≡(□◇⊂◌°⊟₃)"([a-zA-Z])1([a-zA-Z])"
)

┌─╴Part₂
  ˙⍤ ≍ "H8N12O10" G "((N2O)3(H2O)2)2"
  ˙⍤ ≍ "Mg3O8P2" G "Mg3(PO4)2"
  ˙⍤ ≍ "H24" G "(((H)2)3)4"
  ˙⍤ ≍ "Cl3MgNaO4S40" G "NaCl3(O2(S10)2)2Mg"
  ˙⍤ ≍ "W2X4Y3Z2" G "Z2Y3(X2W)2"
└─╴
