@ECHO OFF

TITLE installation script

ECHO =======================================
ECHO  THIS INSTALLATION IS JUST FOR WINDOWS
ECHO =======================================

mkdir ts-boilerplate && cd ts-boilerplate
ECHO STATUS: DIR ts-boilerplate create

CALL :INSTALL_NODE
CALL :INSTALL_TS
CALL :INIT_TS_PROJECT

ECHO STATUS: Create style.css
REM. > style.css
ECHO STATUS: style.css file create successful 

ECHO STATUS: Create .gitignore file
ECHO node_modules/ > .gitignore
ECHO STATUS: .gitignore file create successful

ECHO SETSTATUSUP: Create index.ts
mkdir src && cd src
ECHO console.log("Hello World!"); > index.ts && cd..
ECHO STATUS: index.ts file create successful

ECHO STATUS: Create index.html
REM. > index.html
ECHO ^<!doctype html^> >> index.html
ECHO ^<html class="no-js" lang="en"^> >> index.html
ECHO ^<head^> >> index.html
ECHO   ^<meta charset="utf-8"^> >> index.html
ECHO   ^<title^>Name of the webpage^</title^> >> index.html
ECHO   ^<meta name="description" content="do some description"^> >> index.html
ECHO   ^<meta name="viewport" content="width=device-width, initial-scale=1"^> >> index.html
ECHO   ^<link rel="stylesheet" href="style.css"^> >> index.html
ECHO ^</head^> >> index.html
ECHO ^<body^> >> index.html
ECHO   ^<!-- Add your site or application content here --^> >> index.html
ECHO   ^<script^ src="src/index.js"^>^</script^> >> index.html
ECHO ^</body^> >> index.html
ECHO ^</html^> >> index.html
ECHO STATUS: index.html file create successful

ECHO STATUS: Build the project
CALL tsc -build
ECHO STATUS: Build successful

:INSTALL_NODE
ECHO STATUS: Install NodeJS
CALL npm install npm && npm fund
ECHO STATUS: NodeJS successful installed locally

:INSTALL_TS
ECHO STATUS: Install TypeScript
CALL npm install typescript && npm fund
ECHO STATUS: TypeScript successful installed locally

:INIT_TS_PROJECT
ECHO STATUS: Initializate TypeScript project
CALL tsc --init
ECHO STATUS: Initialization finish successful

CALL npm init
