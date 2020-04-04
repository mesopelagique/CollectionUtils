//%attributes = {}
C_COLLECTION:C1488($result)
$result:=bifurcate (New collection:C1472("beep";"boop";"foo";"bar");New collection:C1472(True:C214;True:C214;False:C215;True:C214))
  // [ ['beep', 'boop', 'bar'], ['foo'] ]
ASSERT:C1129($result.equal(New collection:C1472(New collection:C1472("beep";"boop";"bar");New collection:C1472("foo"))))