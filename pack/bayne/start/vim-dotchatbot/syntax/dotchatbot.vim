if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syntax match header /^@@>.*:$/ containedin=ALL

hi link header Comment

let b:current_syntax = 'markdown'

let &cpo = s:cpo_save
unlet s:cpo_save
