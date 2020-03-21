//%attributes = {"shared":true}
  // Helper method to use with collection map
  // $1 is the value, and the first arg is $2
  // ex: $col.map("c_formula";Formula($1+$2);2) // increment by 2

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
		$args:=New collection:C1472($1.value)
		C_LONGINT:C283($i)
		For ($i;3;$count;1)
			$args.push(${$i})
		End for 
		$1[$key]:=$2.apply($1;$args)
	: ($count=2)
		$1[$key]:=$2.call($1;$1.value)
	Else 
		  // wrong use ie. assert dev
End case 