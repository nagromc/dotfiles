@echo off

set "cygPkgList=aspell,aspell-en,aspell-fr,corkscrew,curl,dos2unix,fish,git,git-svn,highlight,keychain,openssl-perl,python3,python3-pip,recode,the_silver_searcher,tig,tmux,tree,unzip,vim,wget"

set "cygMirrorSite=http://www.mirrorservice.org/sites/sourceware.org/pub/cygwin/"
set "cygInstallerUrl=https://cygwin.com/setup-x86_64.exe"
set "cygInstallerPath=%CD%\setup-x86_64.exe"
set "cygBasePath=%CD%"
set "cygOsPath=%cygBasePath%\cygwin-os"
set "cygPkgPath=%cygBasePath%\cygwin-pkg"


if not exist "%cygInstallerPath%" echo Please download cygwin from "%cygInstallerUrl%" first. && pause && exit

"%cygInstallerPath%" --no-admin --quiet-mode --local-package-dir "%cygPkgPath%" --site "%cygMirrorSite%" --root "%cygOsPath%" --packages "%cygPkgList%"

pause
