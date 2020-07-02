$source = 'C:\Users\aneek\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets'
$desk = 'C:\Users\aneek\Desktop\'
$new_dir = 'pics'
$dest = $desk + $new_dir

$file = gci $source | sort LastWriteTime -descending | select -first 1 | % { $_.LastWriteTime }
$time = $file.ToString('yyyyMMdd')
$newfiles = gci $source | ? {$_.LastWriteTime.ToString('yyyyMMdd') -eq $time}

cd $desk
mkdir $new_dir

cd $source
Copy-Item $newfiles $dest

cd $dest
Get-ChildItem * | Rename-Item -NewName { $_.Name +".jpg" }
Invoke-Item .
exit