//%attributes = {"shared":true}
C_COLLECTION:C1488($0;$result)
C_COLLECTION:C1488($1)
C_LONGINT:C283($2;$depth)

If (Count parameters:C259>1)
	$depth:=$2
End if 

$result:=New collection:C1472()

If (Num:C11($depth)=0)
	flattenForever ($1;$result)
Else 
	flattenWithDepth ($1;$result;$depth)
End if 

$0:=$result