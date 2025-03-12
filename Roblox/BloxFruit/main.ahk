; dont steal i will dmca
; watermark 1

#SingleInstance Force
; #NoEnv

setkeydelay, -1
setmousedelay, -1
setbatchlines, -1
SetTitleMatchMode 2

CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative



;   Roblox Check ------------------------------------------------------------------------------------------;

WinActivate, Roblox
if WinActive("Roblox")
	{
	WinMaximize, Roblox
	}
else
	{
	msgbox, where roblox bruh
	exitapp
	}
	


;   GUI Creation ------------------------------------------------------------------------------------------;

Calculations:
    WinGetActiveStats, Title, WindowWidth, WindowHeight, WindowLeft, WindowTop
    CameraCheckLeft := WindowWidth/2.8444
    CameraCheckRight := WindowWidth/1.5421
    CameraCheckTop := WindowHeight/1.28
    CameraCheckBottom := WindowHeight
    ClickShakeLeft := WindowWidth/4.6545
    ClickShakeRight := WindowWidth/1.2736
    ClickShakeTop := WindowHeight/14.08
    ClickShakeBottom := WindowHeight/1.3409
    FishBarLeft := WindowWidth/3.3160
    FishBarRight := WindowWidth/1.4317
	FishBarTop := WindowHeight/1.201
	FishBarBottom := WindowHeight/1.15
    FishBarTooltipHeight := WindowHeight/1.0626
	ProgressBarLeft := WindowWidth/2.53
    ProgressBarRight := WindowWidth/1.61
	ProgressBarTop := WindowHeight/1.13
	ProgressBarBottom := WindowHeight/1.08
    ResolutionScaling := 2560/WindowWidth
    LookDownX := WindowWidth/2
    LookDownY := WindowHeight/4
    runtimeS := -1
    runtimeM := 0
    runtimeH := 0
	TotalCaught := 0
	TotalLost := 0
	LastTime := 0
    TooltipX := WindowWidth/20
    Tooltip1 := (WindowHeight/2)-(20*9)
    Tooltip2 := (WindowHeight/2)-(20*8)
    Tooltip3 := (WindowHeight/2)-(20*7)
    Tooltip4 := (WindowHeight/2)-(20*6)
    Tooltip5 := (WindowHeight/2)-(20*5)
    Tooltip6 := (WindowHeight/2)-(20*4)
    Tooltip7 := (WindowHeight/2)-(20*3)
    Tooltip8 := (WindowHeight/2)-(20*2)
    Tooltip9 := (WindowHeight/2)-(20*1)
    Tooltip10 := (WindowHeight/2)
    Tooltip11 := (WindowHeight/2)+(20*1)
    Tooltip12 := (WindowHeight/2)+(20*2)
    Tooltip13 := (WindowHeight/2)+(20*3)
    Tooltip14 := (WindowHeight/2)+(20*4)
    Tooltip15 := (WindowHeight/2)+(20*5)
    Tooltip16 := (WindowHeight/2)+(20*6)
    Tooltip17 := (WindowHeight/2)+(20*7)
    Tooltip18 := (WindowHeight/2)+(20*8)
    Tooltip19 := (WindowHeight/2)+(20*9)
    Tooltip20 := (WindowHeight/2)+(20*10)

tooltip, Made By ;;, %TooltipX%, %Tooltip1%, 1
tooltip, Runtime: 0h 0m 0s, %TooltipX%, %Tooltip2%, 2

tooltip, Press "B" for Dark Blade Macro, %TooltipX%, %Tooltip4%, 4
tooltip, Press "G" for Dark Dagger Macro, %TooltipX%, %Tooltip5%, 5
tooltip, Press "XMouse2" for Venom Bow Macro, %TooltipX%, %Tooltip6%, 6

tooltip, Press "L" To Exit, %TooltipX%, %Tooltip9%, 9

;   Runtime -----------------------------------------------------------------------------------------------;

settimer, runtime, 1000
runtime:
    runtimeS++
    if (runtimeS >= 60)
    {
        runtimeS := 0
        runtimeM++
    }
    if (runtimeM >= 60)
    {
        runtimeM := 0
        runtimeH++
    }
    if WinActive("Roblox")
    {
        tooltip, Runtime: %runtimeH%h %runtimeM%m %runtimeS%s, %TooltipX%, %Tooltip2%, 2
    }
    else
    {
        ; exitapp
    }
return

gosub, Calculations



;   Dark Blade Function -----------------------------------------------------------------------------------------------;

$B::
    if WinActive("Roblox")
    {
        SetKeyDelay, 70, 70
        Send, 3
        Sleep, 100
        Send, x
        Sleep, 200
        Send, z
        Sleep, 200
        Send, 1
        Sleep, 300
        Send, z
        Sleep, 2000
        Send, c
        Sleep, 2
        Send, x
        Sleep, 400
    }
return



;   Dark Dagger Function -----------------------------------------------------------------------------------------------;

$G::
    if WinActive("Roblox")
    {
        SetKeyDelay, 70, 70
        Send, 3
        Sleep, 100
        Send, z
        Sleep, 200
        Send, x
        Sleep, 200
        Send, 1
        Sleep, 900
        Send, z
        Sleep, 1900
        Send, c
        Sleep, 1300
        Send, x
        Sleep, 400
    }
return



;   Venom Bow Function -----------------------------------------------------------------------------------------------;

XButton2::
    if WinActive("Roblox")
    {
        SetKeyDelay, 70, 70
        Send, 4
        Sleep, 100
        Send, x
        Sleep, 300
        Send, z
        Sleep, 200
        Send, 1
        Sleep, 200
        Send, z
        Sleep, 1500
        Send, c
        Sleep, 500
        Send, x
        Sleep, 400
    }
return

;   Exit Function ---------------------------------------------------------------------------------------;

$L::
    ; MsgBox, Exiting Script. Goodbye!
    ExitApp
return