//%attributes = {}
C_COLLECTION:C1488($col;$result;$expected)

$col:=New collection:C1472(1;2;3;4)
$result:=$col.map("c_formula";Formula:C1597($1+1))  // ++
$expected:=New collection:C1472(2;3;4;5)
ASSERT:C1129($result.equal($expected);"increment failed "+JSON Stringify:C1217($result))

$col:=New collection:C1472(1;2;3;4)
$result:=$col.map("c_formula";Formula:C1597($1+$2);2)  // + increment of 2
$expected:=New collection:C1472(3;4;5;6)
ASSERT:C1129($result.equal($expected);"increment failed "+JSON Stringify:C1217($result))

$col:=New collection:C1472(1;2;3;4)
$result:=$col.map("c_formula";Formula:C1597($1+$2+$3);2;3)  // + increment of 5
$expected:=New collection:C1472(6;7;8;9)
ASSERT:C1129($result.equal($expected);"increment failed "+JSON Stringify:C1217($result))

C_LONGINT:C283($result_int;$expected_int)
$col:=New collection:C1472(1;2;3;4)
$result_int:=$col.reduce("c_formula";1;Formula:C1597($1*This:C1470.accumulator))
$expected_int:=24
ASSERT:C1129($result_int=$expected_int;"increment failed "+JSON Stringify:C1217($result))
