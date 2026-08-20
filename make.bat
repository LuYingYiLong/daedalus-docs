@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=build

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

if "%1" == "" goto help

if "%1" == "gettext" goto gettext
if "%1" == "update-po" goto updatepo
if "%1" == "html-zh" goto htmlzh

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:gettext
%SPHINXBUILD% -b gettext %SOURCEDIR% %BUILDDIR%\gettext %SPHINXOPTS% %O%
goto end

:updatepo
%SPHINXBUILD% -b gettext %SOURCEDIR% %BUILDDIR%\gettext %SPHINXOPTS% %O%
sphinx-intl update -p %BUILDDIR%\gettext -l zh_CN
goto end

:htmlzh
%SPHINXBUILD% -b html -D language=zh_CN %SOURCEDIR% %BUILDDIR%\html\zh_CN %SPHINXOPTS% %O%
goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd
