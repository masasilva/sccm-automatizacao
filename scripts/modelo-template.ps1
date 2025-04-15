# Script: modelo-template.ps1
# Autor: Matheus Silva
# Descrição: Template base para criação de pacotes SCCM

$AppName = "Nome do Aplicativo"
$NewVersion = "X.X.X"
$SourcePath = "\\servidor\aplicativos\nome\versao"
$SCCMSiteCode = "LAB"
$SCCMServer = "sccm.lab.local"

Write-Host "Iniciando atualização do $AppName para a versão $NewVersion..."

Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
Set-Location "$SCCMSiteCode`:"

$PackageName = "$AppName $NewVersion"
New-CMPackage -Name $PackageName -Path $SourcePath -Description "Atualização do $AppName $NewVersion" -Manufacturer "Fabricante"

Start-CMContentDistribution -PackageName $PackageName

Write-Host "Pacote $PackageName criado e distribuído com sucesso!"
