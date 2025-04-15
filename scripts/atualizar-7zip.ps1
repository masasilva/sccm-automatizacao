# Script: atualizar-7zip.ps1
# Autor: Matheus Silva
# Descrição: Atualiza o 7-Zip via SCCM

$AppName = "7-Zip"
$NewVersion = "23.01"
$SourcePath = "\\servidor\aplicativos\7zip\23.01"
$SCCMSiteCode = "LAB"
$SCCMServer = "sccm.lab.local"

Write-Host "Iniciando atualização do $AppName para a versão $NewVersion..."

Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
Set-Location "$SCCMSiteCode`:"

$PackageName = "$AppName $NewVersion"
New-CMPackage -Name $PackageName -Path $SourcePath -Description "Atualização do $AppName $NewVersion" -Manufacturer "Igor Pavlov"

Start-CMContentDistribution -PackageName $PackageName

Write-Host "Pacote $PackageName criado e distribuído com sucesso!"
