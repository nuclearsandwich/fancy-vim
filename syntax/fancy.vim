"  Vim syntax file
" Language: Fancy (http://fancy-lang.org)
" Maintainer: Steven! Ragnarök
" Latest Revision: 15 October 2011

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword fancyKeyword class def try catch finally retry return return_local
syn keyword fancyKeyword match case
" use match for `require:` since Vim doesn't like the colon in a keyword.
syn match fancyKeyword /\(require:\|->\|=>\)/

" Special variables
syn keyword fancySpecialVar nil self super
syn keyword fancyBoolean true false

" Literals
syn match fancyInteger /\i\@<![-+]\?\d\+/
syn match fancyFloat /\i\@<![-+]\?\d\+\.\d\+/
syn match fancySymbol /'[-0-9A-Za-z_\^?:=|]\+/
syn region fancyNonInterpString start='"' skip='\\"' end='"'
syn region fancyHereDoc start='"""' end='"""'

" Constants and Identifiers
syn match fancyConstant '\u\w*'

" Syntax Blocks
syn region fancyBlock start="{" end="}" fold transparent
syn region fancyComment start='#' end='$'

let b:current_syntax = "fancy"

" Highlighting
highlight def link fancyKeyword Keyword
highlight def link fancyConstant Constant
highlight def link fancySpecialVar Special
highlight def link fancyBoolean Boolean
highlight def link fancyInteger Number
highlight def link fancyFloat Float
highlight def link fancySymbol Label
highlight def link fancyNonInterpString String
highlight def link fancyHereDoc String
highlight def link fancyComment Comment

