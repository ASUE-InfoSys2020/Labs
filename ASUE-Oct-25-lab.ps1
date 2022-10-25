# Work with checksum algorithms: file Verification
# KeyWords: 'data integrity', 'mapping data', 'hash functions', 'digest'
# create or copy some file - calculate checksum
# modify it - calculate again
# restore & compare with initial

#region params
$workPath="$env:HOMEPATH\Desktop\ASUE-Lab-25-Oct\"
$origFile='myFile0.txt'
$newFile='myFile1.txt'
$Algorithm='SHA256'

#endregion

# Create file and add some content with notepad

$origFile="$workPath$origFile"
$newFile="$workPath$newFile"

New-Item -ItemType File -Path $origFile -Force
New-Item -ItemType File -Path $newFile -Force

Start-Process notepad $origFile -Wait
Start-Process notepad $newFile -Wait

# Calculate Hashes
$origFileChkSum = Get-FileHash -Algorithm $Algorithm -LiteralPath $origFile
$newFileChkSum = Get-FileHash -Algorithm $Algorithm -LiteralPath $newFile

if ($newFileChkSum -eq $origFileChkSum) {Write-Host "Files are equal"}

$origFileChkSum
$newFileChkSum




 
