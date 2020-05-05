//%attributes = {"shared":true}
  // Helper method to use with collection map
  // This.value is the current value, $1 the first arg, you must use This.result to affect change
  // ex: $col.map("c_formula_raw";Formula(This.result:=This.value+$1);2)
  // ex: $col.reduce("c_formula_raw";1;Formula(This.accumulator:=This.accumulator+This.value+$1);2)

C_OBJECT:C1216($1)
C_OBJECT:C1216($2)  // Formula
C_VARIANT:C1683(${3})

C_LONGINT:C283($count)
$count:=Count parameters:C259

Case of 
	: ($count>2)
		C_COLLECTION:C1488($args)
		$args:=New collection:C1472()
		C_LONGINT:C283($i)
		For ($i;3;$count;1)
			$args.push(${$i})
		End for 
		$2.apply($1;$args)
	: ($count=2)
		$2.call($1)
	Else 
		  // wrong use ie. assert dev
End case 
