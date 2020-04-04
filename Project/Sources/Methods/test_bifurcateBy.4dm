//%attributes = {}
C_COLLECTION:C1488($result)
$result:=bifurcateBy (New collection:C1472("beep";"boop";"foo";"bar");Formula:C1597(Substring:C12($1;0;1)="b"))
  // [ ['beep', 'boop', 'bar'], ['foo'] ]
ASSERT:C1129($result.equal(New collection:C1472(New collection:C1472("beep";"boop";"bar");New collection:C1472("foo"))))
