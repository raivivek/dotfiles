" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

function! s:source_file(path)
  execute 'source' fnameescape('~/.vim/config/'.a:path)
endfunction

set secure
set nocompatible
set background=dark

call s:source_file('custom.vim')
call s:source_file('general.vim')
call s:source_file('bindings.vim')


" Load vim-plug {{{
call plug#begin('~/.vim/plugged')
call s:source_file('plugins.vim')
call plug#end()
" }}}

" Loading configuration modules {{{
call s:source_file('plugin_config.vim')
colorscheme gruvbox
" colorscheme one
let g:airline_theme='one'
" }}}
