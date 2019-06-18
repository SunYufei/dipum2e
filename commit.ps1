$today = Get-Date
$commit = "Update: {0}" -f $today.ToString('yyyy/MM/dd')

git.exe add .
git.exe commit -m $commit
git.exe push origin master