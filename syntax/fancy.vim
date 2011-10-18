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
syn match fancyDynamicVar '\*\(stdin\|stdout\|stderr\)\*'
" use match for `require:` since Vim doesn't like the colon in a keyword.
syn match fancyKeyword /\(require:\|->\|=>\)/
syn match fancyConditional /\(if:\|if_true:\|if_false:\|unless:\|then:\|else:\)/
syn match fancyConditional /\(while:\|until:\|loop:\|do:\)/

" Special variables
syn keyword fancySpecialVar nil self super
syn keyword fancyBoolean true false

" Literals
syn match fancyInteger /\i\@<![-+]\?\d\+/
syn match fancyFloat /\i\@<![-+]\?\d\+\.\d\+/
syn match fancySymbol /'\(\w\|[-%^&\*+=:|><\[\]?!~]\)\+/
syn region fancyNonInterpString start='"' skip='\\"' end='"'
syn region fancyHereDoc start='"""' end='"""'
syn region fancyRegexp start='/' skip='\\/' end='/'

" Constants and Identifiers
syn match fancyConstant /\u\w*/
syn match fancySlot /@\{1,2\}\(\w\|[-%^&\*+=><?!~]\)\+/

" Syntax Blocks
syn region fancyBlock start="{" end="}" fold transparent
syn region fancyComment start='#' end='$'
syn region fancyArgBlock start='|' end='|'

let b:current_syntax = "fancy"

" Highlighting
highlight def link fancySlot Identifier
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
highlight def link fancyConditional Conditional
highlight def link fancyDynamicVar Macro
highlight def link fancyRegexp String
highlight def link fancyArgBlock Special
