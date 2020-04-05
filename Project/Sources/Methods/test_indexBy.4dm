//%attributes = {}
C_OBJECT:C1216($result)

$result:=indexBy (New collection:C1472(6.1;4.2;7.3);Formula:C1597(Round:C94(This:C1470.value;0)))
  // {4: 4.2, 6: 6.1, 7: 7.3}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("4";4.2;"6";6.1;"7";7.3))))

$result:=indexBy (New collection:C1472("one";"two";"three");Formula:C1597(Length:C16(This:C1470.value)))
  // {3: 'two', 5: 'three'}
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("3";"two";"5";"three"))))


C_COLLECTION:C1488($users)
$users:=New collection:C1472(New object:C1471("user";"barney";"active";False:C215;"age";35);New object:C1471("user";"fred";"active";True:C214;"age";25))

$result:=indexBy ($users;Formula:C1597($1.age))
ASSERT:C1129(New collection:C1472($result).equal(New collection:C1472(New object:C1471("35";New object:C1471("user";"barney";"active";False:C215;"age";35);"25";New object:C1471("user";"fred";"active";True:C214;"age";25)))))
