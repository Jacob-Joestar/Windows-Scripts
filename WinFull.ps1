#Jacob's windows setup script v1.0
#full edition

#updates prexisting packages
winget upgrade --all

#installs and displays winfetch
Install-Script winfetch
winfetch

#install GPU drivers
$answ = Read-Host -Prompt 'Do you want to install gpu drivers? 1. Nvidia / 2. AMD / 3. no'
if($answ -eq 1){
    winget install TechPowerUp.NVCleanstall
}
elseif ($answ -eq 2) {
    Write-Host "AMD does not have their drives on winget or windows store sorry"
}
elseif ($answ -eq 3){}

#activating windows
$answ = Read-Host -Prompt 'Do you need to activate windows? <1 for yes / 2 for no>'
if($answ -eq 1){
    #massgrave's graves windows activation script https://github.com/massgravel/Microsoft-Activation-Scripts
    Invoke-RestMethod https://massgrave.dev/get | Invoke-Expression
}
elseif($answ -eq 2){}

#tweaks
#usses moddified chris titus tech windows utility  https://github.com/ChrisTitusTech/winutil
Invoke-RestMethod https://raw.githubusercontent.com/Jacob-Joestar/winutilJT/main/winutil.ps1 | Invoke-Expression

#package installation
#list of packages
$packages = @(
    'Open-Shell.Open-Shell-Menu'
    '7zip.7zip'
    'Mozilla.Firefox'
    'ShareX.ShareX'
    'IrfanSkiljan.IrfanView'
    'Notepad++.Notepad++'
    'SumatraPDF.SumatraPDF'
    'Malwarebytes.Malwarebytes'
    'VideoLAN.VLC'
    'TheDocumentFoundation.LibreOffice'
    'CodeSector.TeraCopy'
    'Rufus.Rufus' #for windows images
    'Balena.Etcher' #for linux images
    'AntibodySoftware.WizTree'
    
    'Surfshark.Surfshark'
    'qBittorrent.qBittorrent'
    'RevoUninstaller.RevoUninstaller'
    'Microsoft.PowerShell' #for windows 10 will be removed with windows 11 update 
    'Microsoft.WindowsTerminal'
    'AltDrag.Altdrag'

    #gaming packages
    'Valve.Steam'
    'Ubisoft.Connect'
    'ParadoxInteractive.ParadoxLauncher'
    'ElectronicArts.EADesktop'
    'Nvidia.PhysX'
    'Oracle.JavaRuntimeEnvironment' #java 8 for minecraft
    'PrismLauncher.PrismLauncher'

    #dev packages
    'Python.Python.3.11' # will change with latest stable version
    'Oracle.JDK.17' #will change with next lts version
    'Git.Git'
    'GitHub.GitHubDesktop'
    'Microsoft.VisualStudio.2022.Community'
    'VSCodium.VSCodium'
    'JetBrains.IntelliJIDEA.Community'
    'JetBrains.PyCharm.Community'
    'Codeblocks.Codeblocks'

    #content creation packages
    'Audacity.Audacity'
    'GIMP.GIMP'
    'KDE.Krita'
    'LMMS.LMMS'
    'OBSProject.OBSStudio'
    'KDE.Kdenlive'
)

$answ = Read-Host -Prompt 'Do you want to install packages? <1 for yes / 2 for no>'
if($answ -eq 1){
    ForEach($package in $packages){
        winget install $package
    }
}
elseif($answ -eq 2){}

#installs wsl
$answ = Read-Host -Prompt 'Do you want to install WSL? <1 for yes / 2 for no>'
if($answ -eq 1){
    wsl --install
}
elseif($answ -eq 2){}


