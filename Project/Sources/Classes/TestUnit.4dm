

Class constructor
	This:C1470.folder:="test"
	This:C1470.prefix:="test_"
	
	  // get tests method list
Function getTests
	ARRAY TEXT:C222($tests_array;0)
	C_COLLECTION:C1488($0;$tests)
	C_LONGINT:C283($index)
	METHOD GET PATHS:C1163(This:C1470.folder;Path project method:K72:1;$tests_array)
	
	$tests:=New collection:C1472()
	
	For ($index;1;Size of array:C274($tests_array);1)
		If (Position:C15(This:C1470.prefix;$tests_array{$index})=1)
			$tests.push($tests_array{$index})
		End if 
	End for 
	$0:=$tests
	
	
	  // get tests method list
Function executeAll
	C_OBJECT:C1216($0;$result)
	C_TEXT:C284($test)
	$result:=New object:C1471("success";True:C214)
	For each ($test;This:C1470.getTests())
		$result[$test]:=This:C1470.execute($test)
		If (Not:C34(Bool:C1537($result[$test].success)))
			$result.success:=False:C215
		End if 
	End for each 
	$0:=$result
	
Function execute
	C_OBJECT:C1216($0;$result)
	C_TEXT:C284($1;$test)
	$test:=$1
	
	$result:=New object:C1471()
	$txt_method:=Method called on error:C704
	ON ERR CALL:C155("errorTests")
	error:=0
	C_LONGINT:C283($startTime)
	$startTime:=Milliseconds:C459
	EXECUTE METHOD:C1007($test)
	$result.duration:=Milliseconds:C459-$startTime
	ON ERR CALL:C155($txt_method)
	If (error=0)
		$result.success:=True:C214
	Else 
		$result.success:=False:C215
		$result.formula:=Error formula
		$result.code:=error
	End if 
	$0:=$result
	
	
	