//%attributes = {"shared":true}
  // Helper method to use with collection map
  // This.value is the current value, $1 the first arg
  // ex: $col.map("c_formula";Formula(This.value+$1);2) // increment by 2

C_OBJECT:C1216($1)
C_OBJECT:C1216($2)  // Formula
C_VARIANT:C1683(${1})

C_LONGINT:C283($count)
$count:=Count parameters:C259

C_TEXT:C284($key)
If (Undefined:C82($1.accumulator))
	$key:="result"
Else 
	$key:="accumulator"
End if 

Case of 
	: ($count=2)
		$1[$key]:=$2.call($1)
	: ($count=3)
		$1[$key]:=$2.call($1;$3)
	: ($count=4)
		$1[$key]:=$2.call($1;$3;$4)
	: ($count=5)
		$1[$key]:=$2.call($1;$3;$4;$5)
	: ($count=6)
		$1[$key]:=$2.call($1;$3;$4;$5;$6)
	: ($count=7)
		$1[$key]:=$2.call($1;$3;$4;$5;$6;$7)
	: ($count=8)
		$1[$key]:=$2.call($1;$3;$4;$5;$6;$7;$8)
	: ($count=9)
		$1[$key]:=$2.call($1;$3;$4;$5;$6;$7;$8;$9)
End case 