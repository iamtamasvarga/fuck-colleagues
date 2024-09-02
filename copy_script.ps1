$startUpFolder = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"

$scriptTarget = New-Item -Path $startUpFolder -Name "script" -ItemType "directory"

$scriptTargetPath = $scriptTarget.FullName

Copy-Item -Path ".\script\*" -Destination $scriptTargetPath -Recurse

$pornSoundScriptPath = $scriptTargetPath + "\porn_sound.ps1"
$pornSoundFilePath = $scriptTargetPath + "\sound_effect.wav"

(Get-Content $pornSoundScriptPath).Replace('[PORN_SOUND]', $pornSoundFilePath) | Set-Content $pornSoundScriptPath

Copy-Item -Path ".\startup_script.vbs" -Destination $startUpFolder

$vbsPath = $startUpFolder + "\startup_script.vbs"

(Get-Content $vbsPath).Replace('[PS_SCRIPT]', $pornSoundScriptPath) | Set-Content $vbsPath

Cscript.exe $vbsPath //nologo