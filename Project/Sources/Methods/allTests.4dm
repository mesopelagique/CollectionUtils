//%attributes = {"invisible":true,"preemptive":"capable"}
  // execute all test_
C_OBJECT:C1216($tu;$result)
$tu:=cs:C1710.TestUnit.new()

$result:=$tu.executeAll()

If (Not:C34($result.success))
	ASSERT:C1129(False:C215;"One test failed")
	TRACE:C157
End if 