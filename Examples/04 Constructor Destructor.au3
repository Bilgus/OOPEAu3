#AutoIt3Wrapper_Run_AU3Check=n
#include '../OOPE/OOPE.au3'

#classdef <Test> $oTest

MsgBox(0, $oTest.GetTitle, "Default value: " & $oTest.GetValue)
$oTest.SetValue(42)
$oTest.SetTitle("OOPE Test")
MsgBox(0, $oTest.GetTitle, "New value: " & $oTest.GetValue)

#Region Class Test
	Local $iValue, $sTitle

	; Set a default value when instantiated
	Func _Test()
		$This.iValue = 2
		$This.sTitle = "OOPE Default Title"
	EndFunc

	Func __Test()
		MsgBox(0, 0, "I've been destroyed!")
	EndFunc

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