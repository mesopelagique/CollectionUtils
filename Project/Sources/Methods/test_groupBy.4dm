//%attributes = {}
C_OBJECT:C1216($result)

$result:=groupBy (New collection:C1472(6.1;4.2;6.3);Formula:C1597(Round:C94(This:C1470.value;0)))
  // {4: [4.2], 6: [6.1, 6.3]}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("4";New collection:C1472(4.2);"6";New collection:C1472(6.1;6.3)))))

$result:=groupBy (New collection:C1472("one";"two";"three");Formula:C1597(Length:C16(This:C1470.value)))

  // {3: ['one', 'two'], 5: ['three']}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("3";New collection:C1472("one";"two");"5";New collection:C1472("three")))))
