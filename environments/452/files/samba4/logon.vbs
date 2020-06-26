On Error Resume Next
set objNetwork= CreateObject("WScript.Network")
objNetwork.MapNetworkDrive "P:", "\\fileserver\publico"
strDom = objNetwork.UserDomain
strUser = objNetwork.UserName
Set objUser = GetObject("WinNT://" & strDom & "/" & strUser &  ",user")
