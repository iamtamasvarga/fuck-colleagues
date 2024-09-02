Set objShell = CreateObject("WScript.Shell")
set oEnv = objShell.Environment("PROCESS")
oEnv("SEE_MASK_NOZONECHECKS") = 1
objShell.Run "powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File ""C:\Users\iamtamasvarga\Projects\fuck-college\porn_sound.ps1""", 0, False
oEnv.Remove("SEE_MASK_NOZONECHECKS")