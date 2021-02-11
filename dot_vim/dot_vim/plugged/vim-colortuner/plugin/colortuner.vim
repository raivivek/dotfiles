if exists('g:loaded_colortuner') || !has('gui_running') && !has('nvim')
  finish
endif
let g:loaded_colortuner = 1

" commands
command! Colortuner call colortuner#ui#open()

" configurations
function! s:set(var, value)
  if !exists(a:var)
    let {a:var} = a:value
  endif
endfunction

call s:set('g:colortuner_preferred_schemes', [])
call s:set('g:colortuner_vivid_mode', 0)
call s:set('g:colortuner_filepath', '~/.vim-colortuner')
call s:set('g:colortuner_enabled', 1)

" init colortuner
call colortuner#init()
