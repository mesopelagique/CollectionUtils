//%attributes = {}
  // https://www.30secondsofcode.org/js/s/bifurcate-by/
C_COLLECTION:C1488($0;$1;$arr;$result)
C_OBJECT:C1216($2;$formula)
$arr:=$1
$formula:=$2

  // This.value[0] is index with indexify
$result:=New collection:C1472(New collection:C1472;New collection:C1472)
indexify ($arr).reduce("c_formula_raw";$result;Formula:C1597(This:C1470.accumulator[Choose:C955($formula.call(Null:C1517;This:C1470.value[1];This:C1470.value[0]);0;1)].push(This:C1470.value[1])))

$0:=$result
