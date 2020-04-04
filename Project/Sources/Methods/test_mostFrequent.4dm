//%attributes = {}
C_VARIANT:C1683($result)

$result:=mostFrequent (New collection:C1472("a";"b";"a";"c";"a";"a";"b"))
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472("a")))