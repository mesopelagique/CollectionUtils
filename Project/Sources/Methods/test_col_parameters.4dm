//%attributes = {}
ASSERT:C1129(col_parameters ().equal(New collection:C1472()))
ASSERT:C1129(col_parameters (1).equal(New collection:C1472(1)))
ASSERT:C1129(col_parameters (1;Null:C1517).equal(New collection:C1472(1;Null:C1517)))
ASSERT:C1129(col_parameters (1;"Null").equal(New collection:C1472(1;"Null")))

  // ASSERT("zero_one_two";formula(col_parameters(${*}).join(",")).call("zero";"_one";"_two"))
