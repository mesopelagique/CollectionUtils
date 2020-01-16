//%attributes = {}
  // execute all test_
ARRAY TEXT:C222($tests_array;0)
C_COLLECTION:C1488($tests)

METHOD GET PATHS:C1163("test";Path project method:K72:1;$tests_array)
$tests:=New collection:C1472()
ARRAY TO COLLECTION:C1563($tests;$tests_array)

C_TEXT:C284($test)
For each ($test;$tests)
	If (Position:C15("test_";$test)=1)
		EXECUTE METHOD:C1007($test)
	End if 
End for each 