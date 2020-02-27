//%attributes = {"shared":true}

C_VARIANT:C1683(${1})
C_COLLECTION:C1488($col)
$col:=New collection:C1472

C_LONGINT:C283($i)
For ($i;1;Count parameters:C259;1)
	$col.push(${$i})
End for 

$0:=$col