#run PowerShell as adminstration
#Get-ExecutionPolicy
#if Restricted then run
#Set-ExecutionPolicy RemoteSigned
#Done

Write-Host "`nHi, Which build you are gonna download? Example: xxxx"
$main = Read-Host
$down = (($main -Split "-")[2, 3, 4, 5] -join "-")-replace '^[^.]*\.'
$v1 = ($main.Split('/')[1]).Split('-')[0]
$v2 = ($v1 -split "\.")[0..1] -join "."

$headers = @{"X-JFrog-Art-Api" = "YOUR_API_TOKEN"}
$name = "PC_USER_NAME"
$hidden = "DOWNLOAD_LINK"
$normal = "UNENCRYPTED_LINK"

$urls = @(
    "https://$hidden/$main/$v1.zip",
    "https://$hidden/$main/$v1.zip",
    "https://$hidden/$down/$v2.0.zip",
    "https://$hidden/$down/$v2.0.zip"
)

Set-Location "C:\Users\$name\Downloads"
Get-Date -Format "'Download Started' HH:mm:ss"
foreach ($url in $urls){
    $fileName = Split-Path $url -Leaf
    try {
        Invoke-WebRequest -Uri $url -Headers $headers -OutFile $fileName
    }catch (
        Write-Host "- $fileName is failed to download."
    )
}
Get-Date -Format "'Download Finished' HH:mm:ss"
Write-Output "`nThe downstream apps are downloaded from the below link"
Write-Output "$normal/$down/XXXX/XXXX"