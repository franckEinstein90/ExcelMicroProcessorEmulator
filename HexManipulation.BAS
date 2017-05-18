Option Explicit

'*************************************************
'Manipulates text strings representing addresses
'*************************************************

Function nextHex(ByVal hexNum As String) As String
    nextHex = Hex(CLng("&H" & hexNum) + 1)
End Function

Function prevHex(ByVal hexNum As String) As String
    prevHex = Hex(CLng("&H" & hexNum) - 1)
End Function



Function nextAddress(ByVal HexAddress As String) As String
    Dim addressElts() As String
    Dim hexValue As String
    
    addressElts = Split(HexAddress, "x")
    hexValue = addressElts(1)
    nextAddress = nextHex(hexValue)
    While Len(nextAddress) < Len(hexValue)
        nextAddress = "0" & nextAddress
    Wend
    nextAddress = "0x" & nextAddress
End Function


Function prevAddress(ByVal HexAddress As String) As String
    Dim addressElts() As String
    Dim hexValue As String
    
    addressElts = Split(HexAddress, "x")
    hexValue = addressElts(1)
    prevAddress = prevHex(hexValue)
    While Len(prevAddress) < Len(hexValue)
        prevAddress = "0" & prevAddress
    Wend
    prevAddress = "0x" & prevAddress
End Function

