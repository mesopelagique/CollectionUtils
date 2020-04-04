//%attributes = {}
C_OBJECT:C1216($result)

$result:=countBy (New collection:C1472(6.1;4.2;6.3);Formula:C1597(Round:C94(This:C1470.value;0)))
  //  {4: 1, 6: 2}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("4";1;"6";2))))

$result:=countBy (New collection:C1472("one";"two";"three");Formula:C1597(Length:C16(This:C1470.value)))
  //  {3: 2, 5: 1}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("3";2;"5";1))))
