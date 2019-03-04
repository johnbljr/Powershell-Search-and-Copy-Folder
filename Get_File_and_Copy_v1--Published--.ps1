<#
------------------------------------------------------------
Author: John Leger
Date: March 1, 2019
Powershell Version Built/Tested on: 5.1
Title: Get File and Copy to new destination
Website: https://github.com/johnbljr
License: GNU General Public License v3.0
------------------------------------------------------------
#>  
$destination = "\\server99\backup"
$item = Get-ChildItem "\\server99\documents\important\" -recurse | select Fullname | Where-Object {$_.Fullname -like "*test_file*"} 
foreach ($file in $item)
{
    copy-item -path $file.Fullname -Destination $destination -force -recurse
}
