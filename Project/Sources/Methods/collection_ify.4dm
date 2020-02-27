//%attributes = {"shared":true,"preemptive":"capable"}
  // If $1 is collection return it, otherwise return a new collection with the  element $1
C_VARIANT:C1683($1)
C_COLLECTION:C1488($0)

If (Value type:C1509($1)=Is collection:K8:32)
	$0:=$1
Else 
	$0:=New collection:C1472($1)  // if null collection of one null element
End if 