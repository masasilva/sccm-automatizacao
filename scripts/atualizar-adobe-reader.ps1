# Script: atualizar-adobe-reader.ps1
# Autor: Matheus Silva
# Descrição: Atualiza o Adobe Acrobat Reader DC via SCCM

$AppName = "Adobe Reader DC"
$NewVersion = "2025.001.20053"
$SourcePath = "\\servidor\aplicativos\adobe\reader\2025.001.20053"
$SCCMSiteCode = "LAB"
$SCCMServer = "sccm.lab.local"

Write-Host "Iniciando atualização do $AppName para a versão $NewVersion..."

Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
Set-Location "$SCCMSiteCode`:"

$PackageName = "$AppName $NewVersion"
New-CMPackage -Name $PackageName -Path $SourcePath -Description "Atualização do $AppName $NewVersion" -Manufacturer "Adobe"

Start-CMContentDistribution -PackageName $PackageName

Write-Host "Pacote $PackageName criado e distribuído com sucesso!"
