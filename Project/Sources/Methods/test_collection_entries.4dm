//%attributes = {}

C_COLLECTION:C1488($result)

$result:=collection_entries (New collection:C1472("test";"toto"))
ASSERT:C1129($result.equal(New collection:C1472(New object:C1471("key";0;"value";"test");New object:C1471("key";1;"value";"toto"))))

$result:=collection_entries (New collection:C1472())
ASSERT:C1129($result.equal(New collection:C1472()))