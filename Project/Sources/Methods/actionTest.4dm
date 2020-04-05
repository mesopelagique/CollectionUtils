//%attributes = {"publishedWeb":true}
C_VARIANT:C1683($body)
$body:=""
WEB GET HTTP BODY:C814($body)

$body:=JSON Parse:C1218($body)
$test:=$body.test

$result:=New object:C1471()

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

C_TEXT:C284($headers)
$headers:="Content-Type: application/json"
WEB SET HTTP HEADER:C660($headers)


WEB SEND TEXT:C677(JSON Stringify:C1217($result))