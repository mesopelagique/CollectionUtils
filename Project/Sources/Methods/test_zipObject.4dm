//%attributes = {}
C_OBJECT:C1216($result)

$result:=zipObject (New collection:C1472("a";"b";"c");New collection:C1472(1;2;3))
  // {a: 1, b: 2, c: 3}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("a";1;"b";2;"c";3))))

$result:=zipObject (New collection:C1472("a";"b");New collection:C1472(1;2;3))
  // {a: 1, b: 2}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("a";1;"b";2))))
