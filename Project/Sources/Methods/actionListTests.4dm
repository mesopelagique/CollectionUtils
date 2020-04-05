//%attributes = {"publishedWeb":true}

C_TEXT:C284($headers)
$headers:="Content-Type: application/json"
WEB SET HTTP HEADER:C660($headers)

C_OBJECT:C1216($result)
$result:=New object:C1471()
C_TEXT:C284($test)
For each ($test;cs:C1710.TestUnit.new().getTests())
	$result[$test]:=New object:C1471()
End for each 

WEB SEND TEXT:C677(JSON Stringify:C1217($result))