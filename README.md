# texgen
A computer app that allows easier construction of LaTeX documents based on templates.

## Installation
To install everything required to run `texgen` run the install script.

`$: sudo ./install`

This copies the *templates* to */usr/share/texgen*, the texgen to */usr/bin/texgen* and installs the man page.

## Usage
the script is used simply by executing this command

`$: texgen [OPTIONS] <documentname>`

Call the `-h`,`--help` option or manual page `man texgen` to find more information

## Custom templates & Translations
Custom templates are added very easily by adding the template to either

* */usr/share/texgen/template/custom/* - for global user access
* *${HOME}/.texgen/* - for current user only

Translations are done by adding the ISO-639-1 language code (DE for german, EN for english) to the template name divided by an underscore '_'.  
example: `${HOME}/.texgen/customTemplate.tex` and `${HOME}/.texgen/customTemplate_DE.tex`
