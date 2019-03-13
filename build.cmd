@echo Off
REM variables

set solutionName=Mechanika.WpfExtensions.sln
set config=Release
set buildDir=_Build
set packagesDir=%buildDir%\packages

REM process

mkdir %buildDir%
mkdir %packagesDir%

msbuild %solutionName% /p:Configuration="%config%" /p:BuildPackage=true /p:PackageOutputDir="%cd%\%packagesDir%"
