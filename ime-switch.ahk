#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook

; 無変換 → 日本語なら全角半角、それ以外なら「あ」モードへ
sc07B::
{
    hwnd := DllCall("GetForegroundWindow", "Ptr")

    tid := DllCall(
        "GetWindowThreadProcessId",
        "Ptr", hwnd,
        "Ptr", 0,
        "UInt"
    )

    hkl := DllCall(
        "GetKeyboardLayout",
        "UInt", tid,
        "Ptr"
    )

    langId := hkl & 0xFFFF

    if (langId = 0x0411)
    {
        ; 日本語なら半角/全角
        Send "{vkF3}"
        return
    }

    ; 日本語へ切替
    jpHkl := DllCall(
        "LoadKeyboardLayout",
        "Str", "00000411",
        "UInt", 0x00000001,
        "Ptr"
    )

    DllCall(
        "PostMessage",
        "Ptr", hwnd,
        "UInt", 0x0050,
        "Ptr", 0,
        "Ptr", jpHkl
    )

    Sleep 100

    ; 一度「A」を挟むことで「あ」を表示させる
    Send "{vk1A}"
    Sleep 30
    Send "{vkF3}"
}

; ひらがな・カタカナ → Win+Space:レイアウト切り替え
sc070::
{
    Send "#{Space}"
}
