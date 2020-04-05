//%attributes = {}

  // execute all test_
ARRAY TEXT:C222($tests_array;0)
C_COLLECTION:C1488($tests)

METHOD GET PATHS:C1163("test";Path project method:K72:1;$tests_array)
$tests:=New collection:C1472()
ARRAY TO COLLECTION:C1563($tests;$tests_array)
C_LONGINT:C283(error)
C_OBJECT:C1216($result)
$result:=New object:C1471()
C_TEXT:C284($test;$txt_method)
For each ($test;$tests)
	If (Position:C15("test_";$test)=1)
		$result[$test]:=New object:C1471()
		$txt_method:=Method called on error:C704
		ON ERR CALL:C155("errorTests")
		error:=0
		C_LONGINT:C283($startTime)
		$startTime:=Milliseconds:C459
		EXECUTE METHOD:C1007($test)
		ON ERR CALL:C155($txt_method)
		If (error=0)
			$result[$test].success:=True:C214
		Else 
			$result[$test].success:=False:C215
			$result[$test].formula:=Error formula
			$result[$test].code:=error
		End if 
		$result[$test].duration:=Milliseconds:C459-$startTime
	End if 
End for each 

$0:=$result