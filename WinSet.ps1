#update preinstall
winget upgrade --all

#install GPU drivers
$answ = Read-Host -Prompt 'Do you want to install Nvidia gpu drivers? 1. Yes | 2. No'
if($answ -eq 1){
    winget install TechPowerUp.NVCleanstall
}
elseif ($answ -eq 2) {}

#package installation
#list of packages
$packages = @(
    '7zip.7zip'
    'Google.Chrome'
    'ShareX.ShareX'
    'IrfanSkiljan.IrfanView'
    'Notepad++.Notepad++'
    'SumatraPDF.SumatraPDF'
    'VideoLAN.VLC'
    'ONLYOFFICE.DesktopEditors'
    'CodeSector.TeraCopy'
    'Rufus.Rufus' #for windows images
    'Balena.Etcher' #for linux images
    'AntibodySoftware.WizTree'
    
    'Surfshark.Surfshark'
    'qBittorrent.qBittorrent'
    'RevoUninstaller.RevoUninstaller'
    'Microsoft.PowerShell' #for windows 10 will be removed with windows 11 update 
    'Microsoft.WindowsTerminal'

    #gaming packages
    'Valve.Steam'
    'Ubisoft.Connect'
    'ParadoxInteractive.ParadoxLauncher'
    'ElectronicArts.EADesktop'
    'Nvidia.PhysX'
    'Oracle.JavaRuntimeEnvironment' #java 8 for minecraft
    'PrismLauncher.PrismLauncher'

    #dev packages
    'Oracle.JDK.17' #will change with next lts version
    'Git.Git'
    'GitHub.GitHubDesktop'
    'Microsoft.VisualStudio.2022.Community'
    'VSCodium.VSCodium'
    'JetBrains.IntelliJIDEA.Community'
    'Codeblocks.Codeblocks'

    #content creation packages
    'Audacity.Audacity'
    'GIMP.GIMP'
    'KDE.Krita'
    'LMMS.LMMS'
    'OBSProject.OBSStudio'
    'KDE.Kdenlive'
)
ForEach($package in $packages){
    winget install $package
}
wsl --install