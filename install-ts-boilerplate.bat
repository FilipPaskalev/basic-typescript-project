@ECHO OFF

TITLE installation script

ECHO =======================================
ECHO  THIS INSTALLATION IS JUST FOR WINDOWS
ECHO =======================================

CALL mkdir ts-boilerplate && cd ts-boilerplate
ECHO STATUS: DIR ts-boilerplate create

CALL :install_node
CALL :install_typescript
CALL :setup_all_files

PAUSE

:install_node
ECHO INSTALLATION: NodeJS
CALL npm install npm && npm fund
ECHO STATUS: NodeJS successful installed locally
EXIT

:install_typescript
ECHO INSTALLATION: TypeScript
CALL npm install typescript && npm fund
ECHO STATUS: TypeScript successful installed locally
EXIT /B 0

:create_project
ECHO SETUP: Initializate TypeScript project
CALL tsc --init
ECHO STATUS: Initialization finish successful
EXIT /B 0

:setup_all_files
ECHO SETUP: Create index.ts
CALL mkdir src && cd src
CALL ECHO console.log("Hello World!"); > index.ts && cd..
ECHO STATUS: file create 

ECHO SETUP: Create style.css
CALL REM. > style.css
ECHO STATUS: file create 

ECHO SETUP: Create index.html
CALL ECHO <!doctype html>\n<html class=\"no-js\" lang=\"en\">\n<head>\n  <meta charset=\"utf-8\">\n  <title>Name of the webpage</title>\n  <meta name=\"description\" content=\"do some description\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n  <link rel=\"stylesheet\" href=\"style.css\">\n</head>\n<body>\n  <!-- Add your site or application content here -->\n  <script src=\"src/index.js\"></script>\n</body>\n</html> > index.html
ECHO STATUS: file create 

ECHO SETUP: .gitignore file
CALL ECHO node_modules/ > .gitignore
ECHO STATUS: file create

PAUSE