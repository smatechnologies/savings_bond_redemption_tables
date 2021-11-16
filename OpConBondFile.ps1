<#
Syntax: OpConBondFile.ps1 -SourceFile "C:\ProgramData\OpConxps\Bonds\Bonds.csv"
Exit Code 30 = Unable to access folder where the file is located
Tested om 09/27/2021
Written By David Cornelius
#>

param (
    [parameter(mandatory=$true)]
    [string]$SourceFile
)

$ErrorActionPreference = "Stop"

#Testing to confirm accss to input file
 if ((Test-Path $SourceFile)) 
    {
        Write-output [$(Get-Date)]:"Able to access $SourceFile"
    }
else
    {
        $rc = 30
        Write-output [$(Get-Date)]:"Unable to access $SourceFile"
        [Environment]::Exit($rc)
    }

#Getting File Directory path for down stream processing
$DirName=  (Get-Item $SourceFile ).DirectoryName
#Writing out FileName and Directory path
Write-Host $DirName -foregroundcolor green
#Remove API Header and add standard Header
Import-csv -Path $SourceFile -Header "Redemption Period","Redemption Year","Redemption Month","Series Code","Issue Year","Issue Jan Amount","Issue Feb Amount","Issue Mar Amount","Issue Apr Amount","Issue May Amount","Issue Jun Amount","Issue Jul Amount","Issue Aug Amount","Issue Sep Amount","Issue Oct Amount","Issue Nov Amount","Issue Dec Amount","Source Line Number" |select -Skip 1 | Export-Csv -Path "$DirName\BondsNew.csv" -NoTypeInformation
(Get-Content "$DirName\BondsNew.csv") -replace '"', '' | Set-Content -Path "$DirName\BondsSymitar.csv"
#Remove Temp File
Remove-Item "$DirName\BondsNew.csv" -ErrorAction SilentlyContinue