# Generate list of filenames
# Create multiple files with a single random char
#
# Terms, commands, concepts
# $a = $first..$last
# Get-Random()
# convert / casting
# [char]val
# ASCII
# $a = get-random -Minimum 0x41 -Maximum 0x5a
# Invoke-Expression 

#region set parameters
$workPath="$env:HOMEPATH\Desktop\tempo\"
$first=5
$last=13
$files=$first..$last
#endregion


#region create files
$files | ForEach-Object {New-Item -ItemType File "$workPath$_.log" -Force}
#endregion



#region update files
$content = [char](get-random -Minimum 0x41 -Maximum 0x5a)
$files | ForEach-Object {Add-Content "$workPath$_.log" -Value $content}
#endregion
