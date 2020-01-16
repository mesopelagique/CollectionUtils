//%attributes = {"invisible":true,"preemptive":"capable"}
C_COLLECTION:C1488($1;$collection)
C_COLLECTION:C1488($2;$result)

$collection:=$1
$result:=$2

C_VARIANT:C1683($value)
For each ($value;$collection)
	If (Value type:C1509($value)=Is collection:K8:32)
		flattenForever ($value;$result)
	Else 
		$result.push($value)
	End if 
End for each 