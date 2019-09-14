#AutoIt3Wrapper_Run_AU3Check=n
#include '../OOPE/OOPE.au3'

; Create a variable $oTest of type "Test"
#classdef <Test> $oTest

$oTest.SetValue(42)
$oTest.SetTitle("OOPE Test")
MsgBox(0, $oTest.GetTitle, "The answer to everything is " & $oTest.GetValue & ".")

#Region Class Test
	Local $iValue, $sTitle

	Func SetValue($iNewValue)
		$This.iValue = $iNewValue
	EndFunc

	Func GetValue()
		Return $This.iValue
	EndFunc


	Func SetTitle($sNewString)
		$This.sTitle = $sNewString
	EndFunc

	Func GetTitle()
		Return $This.sTitle
	EndFunc
#EndRegion