# TypeScript clean template (**Windows version**)

If you want just to build the project and don't want to read the README.md just start the bat file. It will build the project with name ***ts-boilerplate*** in the directory where is execute.

## **Preparation**

### *IDE*

I'm prefer *Visual Studio Code*. It's free, it have tons of plugins, [extensions](https://marketplace.visualstudio.com/VSCode), build-in [Git](https://git-scm.com/) and you can use it for almost everything. If you want to give it a try, you can install it from [here](https://code.visualstudio.com/).

### *The Project*

Create and navigate to DIR:

```sh
cd [path to name_of_directory] # navigate to DIR
mkdir [name_of_directory] # create DIR
cd [name_of_directory] # enter in DIR
```

---

## **Installations**

[NodeJS](https://nodejs.org/en/) and [Typescript](https://www.typescriptlang.org/) will be needed so... First NodeJS.

### *NodeJS*

Downloaded from [official source](https://nodejs.org/en/download/) OR use [CMD](https://en.wikipedia.org/wiki/Cmd.exe) for global installation:

```sh
# -g stands for global
# If you don't want to install NOdeJS globally, just remove -g

#Global installation
npm install -g npm && npm fund

# Local installation
npm install npm && npm fund 
```

### *Typescript*

Default package manager in [npm](https://www.npmjs.com/), but you can use [yarn](https://yarnpkg.com/) or [pnpm](https://pnpm.js.org/), depending on your preferences.

If you choose different package manager, just before installation of [TypeScript](https://www.typescriptlang.org/) install the package. More info you can find [here](https://www.typescriptlang.org/download).

```sh
# Local installation
npm install typescript --save-dev && npm fund

# Global installation
npm install -g typescript && npm fund
```

---

## **Setup**

Initialization of the project (execution of the command should be in ./ DIR):

```sh
npm init
# See `npm help init` for definitive documentation on these fields and exactly what they do.
```

Create TypeScript project (execution of the command should be in ./ DIR):

```sh
tsc --init
```

Build basic project:

* Create ./src DIR - where in going to be all code.
* Create index.ts file in ./src DIR. It will be entry point of the program.
* Create style.css file in ./ DIR - this will store all the styles for you html page
* Create index.html in ./ DIR- main html page of the project 


```sh
# One line executable command
REM. > index.html && REM. > style.css && mkdir src && cd src && echo console.log("Hello World") > index.ts && cd..
```

Replace content of ./src/[index.html](https://www.freecodecamp.org/news/basic-html5-template-boilerplate-code-example/) with:

```sh
<!doctype html>
<html class="no-js" lang="en">
<head>
  <meta charset="utf-8">
  <title>Name of the webpage</title>
  <meta name="description" content="do some description">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <!-- Add your site or application content here -->
  <script src="src/index.js"></script>
</body>
</html>
```

On that stage your project structure should look like that:

```sh
[project-DIR]
  |- node_modules
  |- src
      |- index.ts
  |- index.html
  |- package.json
  |- package-lock.json
  | -styles.css
  |- tsconfig.json
```

Now to build the index.js run:

```sh
tsc -build
```

To test is it everything working alright. Open index.html in browser and check browser console. You should see "Hello World" in console.

---

## **GitHub**

If you have [GitHub](https://github.com/) is a good idea to add *.gitignore* file and add *node_modules* to that file. More information about *.gitignore* can be found [here](https://www.pluralsight.com/guides/how-to-use-gitignore-file).

```sh
# navigate to main DIR of the project
echo node_modules/ > .gitignore # this will create empty file
```
