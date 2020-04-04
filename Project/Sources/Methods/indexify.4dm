//%attributes = {}
  // because of missing index for collection in map, reduce etc... create indexed collection of tuples
C_COLLECTION:C1488($0;$1)

$0:=New collection:C1472()
C_LONGINT:C283($index)
For ($index;0;$1.length-1;1)
	$0.push(New collection:C1472($index;$1[$index]))  // collection as tuple
End for 