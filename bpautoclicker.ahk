#SingleInstance Force

clickHoldTime := 50 ; in milliseconds

; Set hotkey to F8 (change to your preference)
~F8::
  Click down, Left  ; Simulate pressing the left mouse button down

  ; Loop to simulate holding and clicking at desired speed
  Loop
  {
    Click down, Left      ; Simulate left click (without releasing)

    IsF9Held := GetKeyState("F9", "P")  ; Check if F9 is held down
    If (IsF9Held)  ; If F9 is held down, break loop
      Break

    Sleep, clickHoldTime        ; Delay for 100 milliseconds (adjust for desired speed)
    Click up, Left              ; Simulate releasing the left mouse button
  }
Return