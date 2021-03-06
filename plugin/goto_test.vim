if exists('g:loaded_gototest') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
nnoremap <leader>G <cmd>lua require'goto_test'.goto_test()<cr>

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_gototest = 1
