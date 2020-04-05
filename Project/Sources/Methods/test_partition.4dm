//%attributes = {}
C_COLLECTION:C1488($result;$users)

$users:=New collection:C1472(New object:C1471("user";"fred";"active";False:C215);New object:C1471("user";"barney";"active";True:C214))

$result:=partition ($users;Formula:C1597($1.active))
  // [[{ 'user': 'fred',    'age': 40, 'active': true }],[{ 'user': 'barney',  'age': 36, 'active': false }]]
ASSERT:C1129($result.equal(New collection:C1472(New collection:C1472(New object:C1471("user";"barney";"active";True:C214));New collection:C1472(New object:C1471("user";"fred";"active";False:C215)))))