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
	: ($count>2)
		C_COLLECTION:C1488($args)
		$args:=New collection:C1472()
		C_LONGINT:C283($i)
		For ($i;3;$count;1)
			$args.push(${$i})
		End for 
		$1[$key]:=$2.apply($1;$args)
	: ($count=2)
		$1[$key]:=$2.call($1)
	Else 
		  // wrong use ie. assert dev
End case 