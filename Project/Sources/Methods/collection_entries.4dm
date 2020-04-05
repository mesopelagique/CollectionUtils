//%attributes = {}
C_COLLECTION:C1488($1;$0)

$0:=New collection:C1472()
C_LONGINT:C283($index)
For ($index;0;$1.length-1;1)
	$0.push(New object:C1471("key";$index;"value";$1[$index]))  // collection element as object, same as OB Entries
End for 