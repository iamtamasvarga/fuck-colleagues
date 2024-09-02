Set objShell = CreateObject("WScript.Shell")
set oEnv = objShell.Environment("PROCESS")
oEnv("SEE_MASK_NOZONECHECKS") = 1
objShell.Run "powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File ""[PS_SCRIPT]""", 0, False
oEnv.Remove("SEE_MASK_NOZONECHECKS")