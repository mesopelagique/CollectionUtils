//%attributes = {"invisible":true,"preemptive":"capable"}
C_COLLECTION:C1488($1;$collection)
C_COLLECTION:C1488($2;$result)
C_LONGINT:C283($depth;$3)

$collection:=$1
$result:=$2
$depth:=$3

C_VARIANT:C1683($value)
For each ($value;$collection)
	If (($depth>0) & (Value type:C1509($value)=Is collection:K8:32))
		flattenWithDepth ($value;$result;$depth-1)
	Else 
		$result.push($value)
	End if 
End for each 

