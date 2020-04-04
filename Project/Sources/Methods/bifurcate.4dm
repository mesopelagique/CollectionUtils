//%attributes = {}
  // https://www.30secondsofcode.org/js/s/bifurcate
C_COLLECTION:C1488($0;$1;$2;$arr;$filter;$filter)
$arr:=$1
$filter:=$2

  // This.value[0] is index with indexify
$result:=New collection:C1472(New collection:C1472;New collection:C1472)
indexify ($arr).reduce("c_formula_raw";$result;Formula:C1597(This:C1470.accumulator[Choose:C955($filter[This:C1470.value[0]];0;1)].push(This:C1470.value[1])))

$0:=$result
