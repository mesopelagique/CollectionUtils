//%attributes = {"publishedWeb":true}
C_TEXT:C284($headers)
$headers:="Content-Type: application/json"
WEB SET HTTP HEADER:C660($headers)

WEB SEND TEXT:C677(JSON Stringify:C1217(cs:C1710.TestUnit.new().executeAll()))