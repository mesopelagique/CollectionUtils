//%attributes = {}
  // https://www.30secondsofcode.org/js/s/most-frequent/
C_COLLECTION:C1488($1)
C_VARIANT:C1683($0;$result)


$result:=New object:C1471()
C_OBJECT:C1216($countByOcc)
$countByOcc:=$1.reduce("c_formula_raw";$result;Formula:C1597(This:C1470.accumulator[String:C10(This:C1470.value)]:=nvl (This:C1470.accumulator[String:C10(This:C1470.value)];0)+1))

$result:=OB Entries:C1720($result).reduce("c_formula";New object:C1471("key";Null:C1517;"value";0);Formula:C1597(Choose:C955(This:C1470.value.value>This:C1470.accumulator.value;This:C1470.value;This:C1470.accumulator)))

$0:=$result.key



