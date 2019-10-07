# texgen 1.0
A computer shell script that allows easier construction of LaTeX documents based on templates.

latest version 1.0: developed by gnomengineer

## Installation
To install everything required to run `texgen` run the install script.
Download the git repository previously onto your computer.

`git clone https://github.com/gnomengineer/texgen.git /tmp/texgen_install; cd /tmp/texgen_install`  
`sudo ./install`

This copies the *templates* to */usr/share/texgen*, the texgen to */usr/bin/texgen* and installs the man page.

## Usage
The script's simplest execution is done by the command below.
This creates a LaTeX document with custom library added.
(Creates a folder *myDocument* containing *myDocument.tex* and *custom.sty*)

`texgen myDocument`

Call the `-h`,`--help` option or manual page `man texgen` to find more information

## Custom templates & Translations
Custom templates are added very easily by adding the template to either

* */usr/share/texgen/template/custom/* - for global user access
* *${HOME}/.texgen/* - for current user only

Translations are done by adding the ISO-639-1 language code (DE for german, EN for english) to the template name divided by an underscore '_'.  
example: `${HOME}/.texgen/customTemplate.tex` and `${HOME}/.texgen/customTemplate_DE.tex`
