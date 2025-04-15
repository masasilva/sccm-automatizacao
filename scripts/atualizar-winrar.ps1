# Script: atualizar-winrar.ps1
# Autor: Matheus Silva
# Descrição: Atualiza o WinRAR para a versão mais recente via SCCM

$AppName = "WinRAR"
$NewVersion = "6.24"
$SourcePath = "\\servidor\aplicativos\winrar\6.24"
$SCCMSiteCode = "LAB"
$SCCMServer = "sccm.lab.local"

Write-Host "Iniciando atualização do $AppName para a versão $NewVersion..."

Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
Set-Location "$SCCMSiteCode`:"

$PackageName = "$AppName $NewVersion"
New-CMPackage -Name $PackageName -Path $SourcePath -Description "Atualização do $AppName $NewVersion" -Manufacturer "RARLab"

Start-CMContentDistribution -PackageName $PackageName

Write-Host "Pacote $PackageName criado e distribuído com sucesso!"
