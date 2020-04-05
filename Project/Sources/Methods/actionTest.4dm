//%attributes = {"publishedWeb":true}
C_VARIANT:C1683($body)
$body:=""
WEB GET HTTP BODY:C814($body)

$body:=JSON Parse:C1218($body)
$test:=$body.test

$result:=New object:C1471()

If (Position:C15("test_";$test)=1)
	
	$result:=cs:C1710.TestUnit.new().execute($test)
	
End if 

  // output
C_TEXT:C284($headers)
$headers:="Content-Type: application/json"
WEB SET HTTP HEADER:C660($headers)


WEB SEND TEXT:C677(JSON Stringify:C1217($result))