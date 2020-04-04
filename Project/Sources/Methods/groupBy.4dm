//%attributes = {}
  // https://www.30secondsofcode.org/js/s/group-by/

C_OBJECT:C1216($0;$obj)
C_COLLECTION:C1488($1;$arr)
C_OBJECT:C1216($2;$formula)
$arr:=$1
$formula:=$2
$obj:=New object:C1471()
indexify ($arr.map("c_formula";$2))\
.reduce("c_formula_raw";$obj;Formula:C1597(This:C1470.accumulator[String:C10(This:C1470.value[1])]:=nvl (This:C1470.accumulator[String:C10(This:C1470.value[1])];New collection:C1472()).concat($arr[This:C1470.value[0]])))
$0:=$obj