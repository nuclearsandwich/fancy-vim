"  Vim syntax file
" Language: Fancy (http://fancy-lang.org)
" Maintainer: Steven! Ragnarök
" Latest Revision: 15 October 2011

if exists("b:current_syntax")
  finish
endif

" Keywords

syn keyword fancyKeyword class def

syn match fancyConstant '[A-Z][a-z0-9_]\+'

syn region fancyBlock start="{" end="}" fold transparent


let b:current_syntax = "fancy"

hi def link fancyKeyword Keyword
hi def link fancyConstant Constant
