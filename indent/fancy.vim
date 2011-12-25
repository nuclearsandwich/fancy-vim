" Vim indent file
" Language: Fancy
" Maintainer: Steven! Ragnarök
" Latest Revision: 30 Octoboer 2011

" 0. Initialization {{{1
" =================

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif

let b:did_indent = 1


setlocal autoindent
setlocal indentexpr=
setlocal indentexpr=GetFancyIndent(v:lnum)

let s:INDENT_AFTER = '{'

if exists("GetFancyIndent")
  finish
endif

function! s:GetPrevNormalLine(startlinenum)
  let curlinenum - a:startlinenum

  while curlinenum > 0
    let curlinenum = prevnonblank(curlinenum - 1)
  endwhile
endfunction

function! s:GetFancyIndent(curlinenum)
  let prevlinenum = s:GetPrevNormalLine(a:curlinenum)

  if !prevlinenum
    return -1
  endif

  " Always indent after these operators.
  if prevline =~ s:INDENT_AFTER_OPERATOR
    return previndent + &shiftwidth
  endif

" No indenting or outdenting is needed.
  return -1
endfunction

function! GetFancyIndent(curlinenum)
  let oldcursor = getpos('.')
  let indent = s:GetFancyIndent(a:curlinenum)
  call setpos('.', oldcursor)

  return indent
endfunction



