@echo off

set files='https://i.ytimg.com/vi/E-1TZgNniSA/maxresdefault.jpg','https://cdn1.img.sputnik-georgia.com/images/23341/27/233412744.jpg'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"