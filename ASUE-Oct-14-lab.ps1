# run Get-Alias command
# save output in a file.
# the Name of a file should contain date of its creation
# format for the filename: [text][day-month-year].txt
# check the created file content with notepad

$myDir="C:/Users/tester/Desktop/TMP/"
$fName='myFile_'
$fSuffix = Get-Date -Format "%d%M%y"
$fType = '.txt'
Write-Host "My Filename is: $fName$fSuffix$fType"

$fPath = "$myDir$fName$fSuffix$fType"
Get-Alias|Out-File -FilePath $fPath

notepad $fPath