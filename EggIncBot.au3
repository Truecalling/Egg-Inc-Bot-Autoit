#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Google-Noto-Emoji-Animals-Nature-22266-chicken.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
WinActivate("BlueStacks")
Local $ClientPos = WinGetPos("BlueStacks")
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <GUIListBox.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <Array.au3>
#Region ### START Koda GUI section ### Form=c:\users\picklerick\desktop\egg-inc-bot-autoit-master\egginc.kxf
Local $Form1_1 = GUICreate("Egg Inc bot made by St. Jimmy#9415", 420, 299, 192, 124)
GUISetIcon("C:\Users\blackyblack\Downloads\Google-Noto-Emoji-Animals-Nature-22266-chicken.ico", -1)
Local $FarmGoldEggsCheckBox = GUICtrlCreateCheckbox("Farm Gold Egg Videos?", 24, 32, 161, 33)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $FarmChickensCheckbox = GUICtrlCreateCheckbox("Farm Chicken Videos?", 24, 62, 161, 33)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $FarmMoneyCheckbox = GUICtrlCreateCheckbox("Farm Money Videos?", 24, 92, 161, 33)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $VideoLabel = GUICtrlCreateLabel("What videos to do?", 13, 0, 183, 34)
GUICtrlSetFont(-1, 16, 400, 4, "Nirmala UI")
Local $DisableVideoCheckbox = GUICtrlCreateCheckbox("Disable Video", 24, 152, 105, 33)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $StartButton = GUICtrlCreateButton("Start", 8, 264, 75, 25)
GUICtrlSetFont(-1, 9, 400, 0, "Nirmala UI")
Local $StopButton = GUICtrlCreateButton("Stop", 336, 264, 75, 25)
GUICtrlSetFont(-1, 9, 400, 0, "Nirmala UI")
Local $StatusLabel1 = GUICtrlCreateLabel("Status :", 24, 192, 89, 41)
GUICtrlSetFont(-1, 20, 400, 0, "Nirmala UI")
GUICtrlSetColor(-1, 0x000000)
Local $StatusLabel2 = GUICtrlCreateLabel("‏‏‎Press start or press z", 120, 192, 290, 41)
GUICtrlSetFont(-1, 20, 400, 0, "Nirmala UI")
GUICtrlSetColor(-1, 0x000000)
Local $GoldEggLabel1 = GUICtrlCreateLabel("Gold Videos Done :", 264, 38, 118, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
GUICtrlSetColor(-1, 0x000000)
Local $ChickenLabel1 = GUICtrlCreateLabel("Chicken Videos Done :", 248, 68, 134, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
GUICtrlSetColor(-1, 0x000000)
Local $MoneyLabel1 = GUICtrlCreateLabel("Money Videos Done :", 252, 98, 130, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
GUICtrlSetColor(-1, 0x000000)
Local $GoldEggLabel2 = GUICtrlCreateLabel("...", 392, 38, 13, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $ChickenLabel2 = GUICtrlCreateLabel("...", 392, 68, 13, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $MoneyLabel2 = GUICtrlCreateLabel("...", 392, 98, 13, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $FarmBoostCheckbox = GUICtrlCreateCheckbox("Farm Boost Videos?", 24, 122, 161, 33)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $BoostLabel1 = GUICtrlCreateLabel("Boost Videos Done :", 259, 128, 123, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
GUICtrlSetColor(-1, 0x000000)
Local $BoostLabel2 = GUICtrlCreateLabel("...", 392, 128, 13, 21)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $HoldList = GUICtrlCreateList("", 96, 256, 49, 40)
GUICtrlSetData(-1, "10|15|20|25|30|35|40|45|50|55|60")
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $HoldTimer = GUICtrlCreateLabel("How long to hold button?", 69, 240, 116, 16)
GUICtrlSetFont(-1, 7, 800, 0, "Nirmala UI")
Local $DelayList = GUICtrlCreateList("", 272, 256, 49, 40)
GUICtrlSetData(-1, "0|10|15|20|25|30|35|40|45|50|60")
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
Local $DelayLabel = GUICtrlCreateLabel("How long of a delay inbetween holding?", 216, 240, 177, 16)
GUICtrlSetFont(-1, 7, 800, 0, "Nirmala UI")
Local $HotKeyLabel1 = GUICtrlCreateLabel("Press Z to Toggle the bot", 152, 256, 113, 16)
GUICtrlSetFont(-1, 7, 800, 0, "Nirmala UI")
Local $ToggleLabel2 = GUICtrlCreateLabel("Press X to exit the bot ", 157, 277, 102, 16)
GUICtrlSetFont(-1, 7, 800, 0, "Nirmala UI")
Local $BulbBoostCheckbox = GUICtrlCreateCheckbox("Experimental Unlimited Hatchery Boost", 136, 152, 257, 33)
GUICtrlSetFont(-1, 10, 400, 0, "Nirmala UI")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Local $hWnd = WinGetHandle("[ACTIVE]")
WinSetOnTop($hWnd, "", $WINDOWS_ONTOP)

Global $Toggle = False
Global $GoldEggCounter = 0
Global $BoostCounter = 0
Global $ChickenCounter = 0
Global $MoneyCounter = 0
Global $StringTimeLength = ""
Global $BulbTime = 0
Global $GoBulb = False
Global $GoBulbTimerStarted = False
Global $start = 0
Global $ChickenTries = 0




Func ToggleOnOff()
	If $Toggle = True Then
		$Toggle = False
		ConsoleWrite("Toggled OFF")
		GUICtrlSetData($StatusLabel2, "Toggle OFF")
	Else
		$Toggle = True
		ConsoleWrite("Toggled ON")
		GUICtrlSetData($StatusLabel2, "Toggle ON")
		StartFarm()
	EndIf
EndFunc


Func CollectResourcesGreen()
	PixelSearch(1028,576,1028,576,0x19AC00)
	If Not @error Then
		GUICtrlSetData($StatusLabel2, "Collecting resources while away")
		MouseClick("left",1028,576)
		Sleep(3000)
	EndIf


EndFunc


Func BulbTimer()
	Global $GoBulbTimerStarted = False
	Global $GoBulb = True
EndFunc



Func RedeemBulb()
	If $GoBulb = True Then
		ConsoleWrite("GoBulb True")
		If $GoBulbTimerStarted = False Then
			MouseMove(818,987)
			MouseClick("left",818,987)
			Sleep(500)
			MouseMove(793, 205)
			Sleep(500)
			MouseDown("left")
			Sleep(150)
			MouseMove(805,794)
			Sleep(150)
			MouseUp("left")
			Sleep(450)
			MouseMove(793, 205)
			Sleep(500)
			MouseDown("left")
			Sleep(150)
			MouseMove(805,794)
			Sleep(150)
			MouseUp("left")
			Sleep(450)
			MouseMove(844,505)
			Sleep(500)
			MouseDown("left")
			Sleep(150)
			MouseMove(805,794)
			Sleep(150)
			MouseUp("left")
			Sleep(450)
			MouseClick("left",1073,436)
			Sleep(450)
			MouseClick("left",1110,172)
			Sleep(50)
			Global $GoBulbTimerStarted = True
			$start = TimerInit()
		Else
			ConsoleWrite("GoBulbTimerStarted False")
		EndIf
	Else
		ConsoleWrite("GoBulb False")
	EndIf
EndFunc



Func WatchVideo()
	Sleep(1500)
	;Golden Eggs Reward Search
	PixelSearch(903, 584,903, 584,0xFFC500)
	If Not @error Then
		If GUICtrlRead($FarmGoldEggsCheckBox) = $GUI_CHECKED Then

		;Golden Eggs Reward
		;MouseClick Watch

			MouseClick("left",1050,644,2)
			ConsoleWrite("Golden Eggs Enabled, Doing the video")
			GUICtrlSetData($StatusLabel2, "Found video, in progress")
			$GoldEggCounter = $GoldEggCounter + 1
			GUICtrlSetData($GoldEggLabel2, $GoldEggCounter)
			Sleep(60000)
			GUICtrlSetData($StatusLabel2, "Video should be finished")
			MouseClick("left",477,27)
			Sleep(2400)
			MouseClick("left",1830,68,2)
			Sleep(3400)
			MouseClick("left",1189,61,2)
			Sleep(5000)
			;NoThanks
			;MouseClick("left",897,645,2)
			CollectResourcesGreen()
			Return
		Else
			Sleep(1500)
			MouseMove(804, 634)
			MouseClick("left",804, 634,2)
			GUICtrlSetData($StatusLabel2, "Golden Eggs not selected")
		EndIf
	EndIf
	;
	;Boost Reward Search
	PixelSearch(947, 525,947, 525,0xFFFF00)
	If Not @error Then
		If GUICtrlRead($FarmBoostCheckbox) = $GUI_CHECKED Then
			;Boost Reward
			;MouseClick Watch
			MouseClick("left",1050,644,2)
			ConsoleWrite("Boost Video Enabled, Doing the video")
			GUICtrlSetData($StatusLabel2, "Found video, in progress")
			$BoostCounter = $BoostCounter + 1
			GUICtrlSetData($BoostLabel2, $BoostCounter)
			Sleep(60000)
			GUICtrlSetData($StatusLabel2, "Video should be finished")
			MouseClick("left",477,27)
			Sleep(2400)
			MouseClick("left",1830,68,2)
			Sleep(3400)
			MouseClick("left",1189,61,2)
			Sleep(5000)
			;NoThanks
			;MouseClick("left",897,645,2)
			CollectResourcesGreen()
			Return

		Else
			Sleep(1000)
			;NoThanks
			MouseClick("left",804, 634,2)
			GUICtrlSetData($StatusLabel2, "Boost not selected")
		EndIf
	EndIf
	;
	;Chicken Reward Search
	PixelSearch(954, 526,957, 529,0x554E28)
	If Not @error Then
		If GUICtrlRead($FarmChickensCheckbox) = $GUI_CHECKED Then
			;Chicken Reward
			;MouseClick Watch
			MouseClick("left",1050,644,2)
			ConsoleWrite("Chicken Video Enabled, Doing the video")
			GUICtrlSetData($StatusLabel2, "Found video, in progress")
			$ChickenCounter = $ChickenCounter + 1
			GUICtrlSetData($ChickenLabel2, $ChickenCounter)
			Sleep(60000)
			GUICtrlSetData($StatusLabel2, "Video should be finished")
			MouseClick("left",477,27)
			Sleep(2400)
			MouseClick("left",1830,68,2)
			Sleep(3400)
			MouseClick("left",1189,61,2)
			Sleep(5000)
			;NoThanks
			;MouseClick("left",897,645,2)
			CollectResourcesGreen()
			Return

		Else
			Sleep(1500)
			;NoThanks
			MouseClick("left",804,634,2)
			GUICtrlSetData($StatusLabel2, "Chicken not selected")
			ConsoleWrite("Chicken not Selected")
		EndIf
	EndIf
	;
	;Money Reward Search
	PixelSearch(900, 583,900, 583,0x527E50)
	If Not @error Then
		If GUICtrlRead($FarmMoneyCheckbox) = $GUI_CHECKED Then
			;Chicken Reward
			;MouseClick Watch
			MouseClick("left",1050,644,2)
			ConsoleWrite("Money Video Enabled, Doing the video")
			GUICtrlSetData($StatusLabel2, "Found video, in progress")
			$MoneyCounter = $MoneyCounter + 1
			GUICtrlSetData($MoneyLabel2, $MoneyCounter)
			Sleep(60000)
			GUICtrlSetData($StatusLabel2, "Video should be finished")
			MouseClick("left",477,27)
			Sleep(2400)
			MouseClick("left",1830,68,2)
			Sleep(3400)
			MouseClick("left",1189,61,2)
			Sleep(5000)
			;NoThanks
			;MouseClick("left",897,645,2)
			CollectResourcesGreen()
			Return

		Else
			Sleep(1500)
			;NoThanks
			MouseMove(838, 642)
			MouseClick("left",838, 642,2)
			GUICtrlSetData($StatusLabel2, "Money not selected")
		EndIf
	EndIf
	;
EndFunc
Func CloseVehiclePage()
	PixelSearch(755,162,755,162,0x276EC6)
	If Not @error Then
		GUICtrlSetData($StatusLabel2, "Closing Vehicle Page")
		MouseClick("left",1110, 171)
		Sleep(3000)
	EndIf
EndFunc
Func CloseBulbErrorPage()
	PixelSearch(972, 465,972, 465,0x276EC6)
	If Not @error Then
		GUICtrlSetData($StatusLabel2, "Closing Bulb Error Page")
		MouseClick("left",972, 465)
		Sleep(3000)
	EndIf
EndFunc
Func CloseRewardPage()
	PixelSearch(902, 641,902, 641,0xF00D0D)
	If Not @error Then
		GUICtrlSetData($StatusLabel2, "Closing Reward Page")
		MouseClick("left",902, 641)
		Sleep(3000)
	EndIf
EndFunc
Func CloseDailyReward()
	PixelSearch(984, 571,984, 571,0x8600C4)
	If Not @error Then
		GUICtrlSetData($StatusLabel2, "Closing Daily Gift Page")
		MouseClick("left",1079, 446)
		Sleep(3000)
	EndIf
EndFunc

Func Problem()
	MouseMove(501,10,2)
	Sleep(200)
	MouseClick("left",517, 9)
	Sleep(1000)
	MouseClick("left",517, 9)
	Sleep(5000)
EndFunc


Func FindChickenButton()
	CollectResourcesGreen()
	CloseVehiclePage()
	CloseRewardPage()
	RedeemBulb()
	CloseBulbErrorPage()
	If $GoBulb = True Then
		If TimerDiff($start) > 650000 Then
					BulbTimer()
		EndIf
	EndIf
	ConsoleWrite("PS for Chicken Button")
	PixelSearch(904, 956,957, 1008,0xF00D0D)
	If @error Then
		GUICtrlSetData($StatusLabel2, "Can't find home village")
		MouseClick("left", 196, 179)
		Sleep(7000)
		MouseClick("left", 453, 23)
		Sleep(7000)
		MouseClick("left",1364,843,2)
		Sleep(7000)
		CollectResourcesGreen()
		$ChickenTries = $ChickenTries + 1
		If $ChickenTries = 2 Then
			Problem()
			$ChickenTries = 0
		EndIf
	Else
		MouseMove(930,981,10)
		MouseDown('Left')
		ConsoleWrite("Holding Button Down to Spawn Chickens")
		GUICtrlSetData($StatusLabel2, "Cooking Chickens!")
		$SleepTime = GuiCtrlRead($HoldList)
		$SleepTime = Number($SleepTime) *1000
		Sleep($SleepTime)
		ConsoleWrite($SleepTime)
		MouseUp('Left')
		$SleepTime2 = GuiCtrlRead($DelayList)
		GUICtrlSetData($StatusLabel2, "Waiting for " & $SleepTime2 & " seconds!")
		$SleepTime2 = Number($SleepTime2) *1000
		Sleep($SleepTime2)
		ConsoleWrite("Lifting Up")
		MouseMove(1002, 982)
		$ChickenTries = 0
	EndIf
	EndFunc

Func RewardSearch()
	Local $Go
	Local $MultiReward
	$Go = True
	$MultiReward = False
	PixelSearch(1167, 230,1167, 230,0xFFFFFF)
	If Not @error Then
		$MultiReward = True
		GUICtrlSetData($StatusLabel2, "Found Multiple Rewards!")
		Sleep(500)
	EndIf
	While $Go = True
		PixelSearch(1164,171,1164,171,0xFFFFFF)
		If Not @error Then
			MouseClick("left",1164,171)
			GUICtrlSetData($StatusLabel2, "Found something!")
			Sleep(2200)
		Else
			Return
		EndIf
		CloseDailyReward()
		PixelSearch(796, 708,796, 708,0x7F7F7F)
		If Not @error Then
			MouseClick("left",796, 708)
			Sleep(2200)
		EndIf
		PixelSearch(983,586,987,589,0x276EC6)
		If Not @error Then
			MouseClick("left",983,586,2)
			Sleep(2200)
		EndIf
		PixelSearch(983,644,983,644,0x276EC6)
		If Not @error Then
			Sleep(2000)
			MouseClick("left",983,644,2)
			Sleep(2000)
		EndIf
		;start video popup
		Sleep(500)
		ConsoleWrite("Checking for watch button")
		WatchVideo()
		If $MultiReward = True Then
			$MultiReward = False
		Else
			$Go = False
		EndIf
	WEnd
EndFunc
Func ToggleMouse()
	ConsoleWrite("Toggle Mouse")
   ; Variable to indicate whether the mouse is already down
    Global $Down
	While 1
		FindChickenButton()
		RewardSearch()
	WEnd
EndFunc

; Function to end the script
Func Off()
    Exit
EndFunc

; Set the hotkeys up
HotkeySet('z', 'ToggleOnOff')
HotkeySet('x', 'Off')
HotkeySet('c', 'BulbTimer')


Func StartFarm()
	While $Toggle = True
		FindChickenButton()
		RewardSearch()
	WEnd
EndFunc
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $StartButton
			ToggleOnOff()
		Case $StopButton
			ToggleOnOff()
		Case $FarmGoldEggsCheckBox
            Sleep(50)
		Case $FarmMoneyCheckbox
           Sleep(50)
		Case $FarmChickensCheckbox
			Sleep(50)
		Case $BulbBoostCheckbox
			If GUICtrlRead($BulbBoostCheckbox) = $GUI_CHECKED Then
				Global $GoBulb = True
				Global $GoBulbTimerStarted = True
			Else
				Global $GoBulb = False
			EndIf
		Case $DisableVideoCheckbox
			If GUICtrlRead($DisableVideoCheckbox) = $GUI_CHECKED Then
				GuiCtrlSetState($DisableVideoCheckbox, $GUI_CHECKED)
				GuiCtrlSetState($FarmBoostCheckBox, $GUI_DISABLE)
				GuiCtrlSetState($FarmChickensCheckbox, $GUI_DISABLE)
				GuiCtrlSetState($FarmMoneyCheckbox, $GUI_DISABLE)
				GuiCtrlSetState($FarmGoldEggsCheckBox, $GUI_DISABLE)
				GuiCtrlSetState($FarmChickensCheckbox, $GUI_UNCHECKED)
				GuiCtrlSetState($FarmMoneyCheckbox, $GUI_UNCHECKED)
				GuiCtrlSetState($FarmGoldEggsCheckBox, $GUI_UNCHECKED)
				GuiCtrlSetState($FarmBoostCheckBox, $GUI_UNCHECKED)
			Else
				GuiCtrlSetState($DisableVideoCheckbox, $GUI_UNCHECKED)
				GuiCtrlSetState($FarmChickensCheckbox, $GUI_ENABLE)
				GuiCtrlSetState($FarmMoneyCheckbox, $GUI_ENABLE)
				GuiCtrlSetState($FarmGoldEggsCheckBox, $GUI_ENABLE)
				GuiCtrlSetState($FarmBoostCheckBox, $GUI_ENABLE)
			EndIf
	EndSwitch
WEnd