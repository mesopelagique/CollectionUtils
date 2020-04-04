//%attributes = {"shared":true,"preemptive":"capable"}
  // https://www.30secondsofcode.org/js/s/zip-object/
C_OBJECT:C1216($0;$obj)
C_COLLECTION:C1488($1;$2;$values)
$values:=$2
$obj:=New object:C1471()
indexify ($1).reduce("c_formula_raw";$obj;Formula:C1597(This:C1470.accumulator[This:C1470.value[1]]:=$values[This:C1470.value[0]]))
$0:=$obj

  // TODO: remove indexify if index could come in This.index
  // TODO: get undefined if index not available in $values
