$name = "PC_USER_NAME"
$build = "BUILD_NAME"
$hidden = "DOWNLOAD_LINK"

$urls = @(
    "https://$hidden/$build/downloadfile1.zip",
    "https://$hidden/$build/downloadfile2.zip",
    "https://$hidden/$build/downloadfile3.zip",
    "https://$hidden/$build/downloadfile4.zip"
)

Set-Location "C:\Users\$name\Downloads"

Get-Date -Format "'Download Started' HH:mm:ss"
foreach ($url in $urls){
    $fileName = Split-Path $url -Leaf
    Invoke-WebRequest -Uri $url -Headers $headers -OutFile $fileName
}
Get-Date -Format "'Download Finished' HH:mm:ss"