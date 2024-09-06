$randomNumber = Get-Random -Minimum 0 -Maximum 3

# Check if the number is 0 (which gives a 33% chance)
if ($randomNumber -eq 0) {
    $randomSleep = Get-Random -Minimum 30 -Maximum 60
    Start-Sleep -Seconds $randomSleep
    Start-Process "https://www.ruzovyslon.sk/"
}