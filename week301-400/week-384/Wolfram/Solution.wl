(* ::Package:: *)

ClearAll["`*"]; 
numToChar[n_]:=Which[
  n<10,FromCharacterCode[n+ToCharacterCode["0"]],
  n<36,FromCharacterCode[n-10+ToCharacterCode["A"]],
  n<62,FromCharacterCode[n-36+ToCharacterCode["a"]],
  n==62,"+",
  True,"/"];
sol1[n_,base_]:=StringJoin@@numToChar/@IntegerDigits[n, base];

sol2[input_]:=Module[{
  chars=Characters[input],
  n=StringLength[input],
  s},
  Apply[StringJoin]/@
   DeleteDuplicates@
    Select[Subsequences[chars,{2,n}],
     Count[#,"0"]==Count[#,"1"]&&(
      s=Sort[#];
      s==#||Reverse[s]==#)&]];

TestReport[{
   VerificationTest[sol1[42,2]=="101010"],
   VerificationTest[sol1[15642094,16]=="EEADEE"],
   VerificationTest[sol1[493,8]=="755"],
   VerificationTest[sol1[2228519,36]=="1BRJB"],
   VerificationTest[sol1[123456789,64]=="7MyqL"],
   VerificationTest[sol2["0101"]=={"01","10"}],
   VerificationTest[sol2["000111"]=={"01","0011","000111"}],
   VerificationTest[sol2["000011"]=={"01","0011"}],
   VerificationTest[sol2["10011100"]=={"10","01","0011","1100"}],
   VerificationTest[sol2["00000"]=={}]}]
