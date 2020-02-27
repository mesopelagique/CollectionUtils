//%attributes = {"shared":true}
  // Helper method to use with collection map
  // This.value is the current value, $1 the first arg, you must use This.result to affect change
  // ex: $col.map("c_formula_raw";Formula(This.result:=This.value+$1);2)
  // ex: $col.reduce("c_formula_raw";1;Formula(This.accumulator:=This.accumulator+This.value+$1);2)

C_OBJECT:C1216($1)
C_OBJECT:C1216($2)  // Formula
C_VARIANT:C1683(${1})

C_LONGINT:C283($count)
$count:=Count parameters:C259
Case of 
	: ($count=2)
		$2.call($1)
	: ($count=3)
		$2.call($1;$3)
	: ($count=4)
		$2.call($1;$3;$4)
	: ($count=5)
		$2.call($1;$3;$4;$5)
	: ($count=6)
		$2.call($1;$3;$4;$5;$6)
	: ($count=7)
		$2.call($1;$3;$4;$5;$6;$7)
	: ($count=8)
		$2.call($1;$3;$4;$5;$6;$7;$8)
	: ($count=9)
		$2.call($1;$3;$4;$5;$6;$7;$8;$9)
End case 