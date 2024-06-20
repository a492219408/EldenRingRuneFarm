#Requires AutoHotkey v2.0-a
#SingleInstance Force

intervalDelay := 50
; 循环次数
n := 1000

; 快捷键重启脚本
F2:: Reload

; 快捷键开始脚本
F1:: {
    Loop (n) {
        ; 传送
        sendKey("G")
        Sleep(1000)
        sendKey("F")
        Sleep(200)
        sendKey("E")
        Sleep(200)
        sendKey("E")
        ; 界面加载读条时间
        Sleep(8000)
        ; 向前走
        sendKey("W", 5500)
        Sleep(intervalDelay)
        ; 向左走
        sendKey("A", 1600)
        Sleep(intervalDelay)
        ; 向左前45度调整位置
        Send("{W Down}")
        Send("{A Down}")
        Sleep(100)
        Send("{W Up}")
        Send("{A Up}")
        Sleep(intervalDelay)
        ; 释放战技
        Send("{Ctrl Down}")
        Sleep(intervalDelay)
        Send("{Ctrl Up}")
        Sleep(7000)
    }
}

sendKey(key, pressDuration := 50) {
    Send("{" key " Down}")
    Sleep(pressDuration)
    Send("{" key " Up}")
}
