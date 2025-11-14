# ASCII Art
Write-Host @"
                                                                               

    OOOOOOOOO     OOOOOOO         OOOOOOOOOO     OOOOOOOOOO     OOOOO     OOOOO   
    O        OO   O    OO         O        NON   OO        OO   OO  OO    O  OO   
    OO  OOOO   O  OOO  OO         OO   OOOO  ON  OO  OOOOO  OO  OOO  OO   O  OO   
    O  OO  OOOOOO  OO  OO          OO NO OO  OO  OO OO   OOOOO   OO  OO   O  OO   
    OO OOOOO       OO  OO        OOO  NOOOO  OO  OO  OOOON      OOO  OOOOOO  OO   
     OO N    OO    OO  OO         O          OO   OO       OO   OO           OO   
       OOOOO   O   OO  OO         OO  NOOOO  OO     OOOOOO  OO  OOO  OOOOOO  OO   
    OOOOO  OO  OO  OO  OO          O   O OO  OO   ONOO   O  OO   NO  OO   O  OO   
    OO  OOOO  OO    ON  OOOOOOOO   O  OO NO  OO   O  NOOOO  OO   NO  OO   O  OO   
     OON     OO      OO       NO   OO  O NO  OO   OOO      OO    NO  OO   O  OO   
        OOOON          OOOOOOOOO   OOOOO OOOOOO      OOOOO       OOOOOO   OOOOO   
                                                                                  

                                                 
"@ -ForegroundColor Cyan

# System info
Write-Host "Date: $(Get-Date -Format 'dd-MM-yyyy')" -ForegroundColor Green
Write-Host "Time : $(Get-Date -Format 'h::m::s')" -ForegroundColor Green
Write-Host ""
Set-Alias -Name ed -Value edit
Set-Alias -Name ipcfg -Value ipconfig

function sget
{
  param([string] $repo)
  winget install $repo
}
function global:help
{
 Write-Host "use shelp for slash shell help" -ForegroundColor Magenta
 Microsoft.PowerShell.Core\Get-Help @args
}
function shelp
{
  Write-Host " slash console(C) 2025(ig) well here are the docs for my dumbass:"
  Write-Host ""
  Write-Host "sget = winget install = install shit from the net(idk exact soruce but from the net)"
  Write-Host ""
  Write-Host "ipcfg = ipconfig(shows info about network)"
  Write-Host ""
  Write-Host "ed = edit(helps u edit)"
  Write-Host ""
  Write-Host "wifi-pass = shows wifi password (syn: wifi-pass "network_name")"
  Write-Host ""
  Write-Host "web = opens website on default browser(syn: figure it out dumbass| eg: web google.com(don't put https:// it is build in)"
  Write-Host ""
  Write-Host "run = runs the programming lang shit, i.e compiles(if needed) the code and runs it (supports c, c++, python) syn(for compiled): run filename outputname, (for python) run filename"   
 Write-Host ""
  Write-Host "path-add = adds the dir to path(give full url eg C:/users/name/cpp/bin)"
  Write-Host ""
  Write-Host "yt = searches on yt"
  Write-Host ""
  Write-Host "f-exp = opens the current directory in file explorer"
  Write-Host ""
  Write-Host "restart = restarts shell"
  Write-Host ""
}
function hello{
 Write-Host "sup man"
 }
function bye{
 Write-Host "bye"
 exit
 }
 function kys{
 Write-Host "sure bro sure"
 }
 function update-windows
 {
  Write-Host "sucide helpline: 1166"
 }
 function weather-forecast{
 Write-Host "frr bruh ?"
 Start-Process https://www.google.com/search?q=weather+today
 }
 function fuck
 {
 Write-Host "sure"
 for($i = 1; $i -le 12; $i++)
 {
 Start-Process "https://chat.openai.com"
 if($i%2 -eq 0){
 & code
 }
 
 }
 }
 
function yt
{
  param([string] $query)
  web www.youtube.com/results?search_query=$query
}
function restart
{
  Start-Process powershell.exe -NoNewWindow
  clear
  exit
}
function f-exp
{
 $path = $PWD.Path
 start $path
}
function path-add {
    param([string]$pathToAdd)
    
    # Check if path exists
    if (-not (Test-Path $pathToAdd)) {
        Write-Host "Error: Path '$pathToAdd' does not exist!" -ForegroundColor Red
        return
    }
    
    # Get absolute path
    $absolutePath = (Resolve-Path $pathToAdd).Path
    
    # Check if already in PATH
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")
    if ($currentPath -split ";" -contains $absolutePath) {
        Write-Host "Path already exists in PATH" -ForegroundColor Yellow
        return
    }
    
    # Add to PATH
    $newPath = $currentPath + ";" + $absolutePath
    [Environment]::SetEnvironmentVariable("PATH", $newPath, "User")
    
    Write-Host "Added to PATH: $absolutePath" -ForegroundColor Green
    Write-Host "Note: Restart PowerShell for changes to take effect" -ForegroundColor Yellow
}

function web
{
  param([string] $site)
  Start-Process "http://$site"
}

function wifi-pass {
    param([string]$network_name)
    netsh wlan show profile name="$network_name" key=clear
}
function run {
 param(
      [string] $filename,
      [string] $output_name
      )
 $extension = [System.IO.Path]::GetExtension($filename)
 if($extension -eq ".c")
 {
   gcc $filename -o $output_name
 }
 if($extension -eq ".cpp")
 {
   g++ $filename -o $output_name
 }
 if($extension -eq ".py")
 {
   Python $filename
   return
 }
 
 
 & ./$output_name
 
 }
