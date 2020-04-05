//%attributes = {}
  // prepare server
C_OBJECT:C1216($webServer)
$webServer:=WEB Server:C1674()

C_BOOLEAN:C305($isRunning)
$isRunning:=$webServer.isRunning

If (Not:C34($isRunning))
	$webServer.start(New object:C1471("HTTPPortID";"8765";"defaultHomepage";"index.html"))
End if 

  // get page
C_OBJECT:C1216($config)
$config:=New object:C1471
$config.url:="http://localhost:"+String:C10($webServer.HTTPPort)+"/"+$webServer.defaultHomepage
$config.areaName:="index"
$config.onEvent:=Formula:C1597(This:C1470.result:=Choose:C955(FORM Event:C1606.code=On End URL Loading:K2:47;WA Get page content:C1038(*;This:C1470.areaName);This:C1470.result))
C_TEXT:C284($result)
$result:=WA Run offscreen area:C1727($config)

  // meta is not parsable(because no /) so do a dirty trick by removing it and adding it
$result:=Replace string:C233($result;"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">";"")

  // remove javascripts
C_TEXT:C284($dom;$domfirst)
$dom:=DOM Parse XML variable:C720($result)
ARRAY TEXT:C222($domarray;0)
$domfirst:=DOM Find XML element:C864($dom;"//script";$domarray)
C_LONGINT:C283($index)
For ($index;1;Size of array:C274($domarray);1)
	DOM REMOVE XML ELEMENT:C869($domarray{$index})
End for 
DOM EXPORT TO VAR:C863($dom;$result)
DOM CLOSE XML:C722($dom)

  // replacing meta
$result:=Replace string:C233($result;"<head>";"<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">")

  // write to file
Folder:C1567(fk web root folder:K87:15).file("results.html").setText($result)

  // stop server if stopped before launching this method
If (Not:C34($isRunning))
	$webServer.stop()
End if 