" vim-lorem     When you need some throwaway text to test on
" Maintainer:   Keith Peters (http://bit-101.com)
" Version:      0.0.1

if exists('g:loaded_vimlorem')
  finish
endif
let g:loaded_vimlorem = 1

if !exists('g:vimlorem_source')
  let g:vimlorem_source = expand('<sfile>:p:h') . "/code.txt"
endif

if !exists('g:vimlorem_filetype')
  let g:vimlorem_filetype = 'javascript'
endif

function s:Lorem()
  execute 'enew'
  execute '0read' . g:vimlorem_source
  execute 'set ft=' . g:vimlorem_filetype
endfunction


command! -nargs=0 Lorem call s:Lorem()

