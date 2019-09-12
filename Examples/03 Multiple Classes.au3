#AutoIt3Wrapper_Run_AU3Check=n
#include '../OOPE/OOPE.au3'

#classdef <Test> $oTest, <Second> $oSecond

$oTest.SetValue(2)
MsgBox(0, 0, $oTest.GetValue)

$oSecond.SetValue(2)
MsgBox(0, 0, $oSecond.GetSquare)
MsgBox(0, 0, $oSecond.GetValue)

#Region Class Test
	Local $iValue

	Func SetValue($iNewValue)
		$This.iValue = $iNewValue
	EndFunc

	Func GetValue()
		Return $This.iValue
	EndFunc
#EndRegion

#Region Class Second
	Local $iValue

	;Uh oh we have a duplicate function add '#' to the Func & EndFunc So Autoit Ignores it
	#Func SetValue($iNewValue)
		$This.iValue = $iNewValue * 100
	#EndFunc

	Func SetBase($iNewValue)
		$This.iValue = $iNewValue
	EndFunc

	Func GetSquare()
		Return $This.iValue ^ 2
	EndFunc

	#Func GetValue()
		Return $This.iValue
	#EndFunc
#EndRegion