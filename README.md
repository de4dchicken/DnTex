# DnTex
LaTeX DnD Character sheet.

## Usage
Set your characters stats in vars.tex.
Compile PDF file.
Profit.

### Compilation instructions
Uses Xelatex as the typesetting engine.
Compile by running `make`, or if unavailaible run `xelatex charsheet.tex` twice.

## Development
`./charsheet.tex` contains the document creation structure. `./vars.tex` shall be the only file to be edited to create a new character.

The section of the character sheet are split into separate files in `./tikzsource/` to make the files less convoluted.