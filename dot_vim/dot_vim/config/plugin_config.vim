" Plugin Specific Settings
"---------------------------------------------------------

" General {{{
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\   'javascript': ['prettier'],
\   'r': ['styler'],
\   'css': ['prettier']
\}
let g:ale_python_black_options = '--py36'
let g:ale_python_flake8_executable = 'python3'
"let g:ale_r_lintr_options = 'with_defaults(line_length_linter(120))'
" }}}

" ArgWrap
nnoremap <silent> <leader>a :ArgWrap<CR>}"

" vim-sneak
let g:sneak#label = 1

" GundoTree {{{
nnoremap <Leader>gu :GundoToggle<CR>
" }}}

" SuperTab {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
" }}}

" ChooseWin {{{
nmap  -  <Plug>(choosewin)

let g:choosewin_label = 'FGHJKLZXCVBNM'
let g:choosewin_overlay_enable     = 1
let g:choosewin_statusline_replace = 1
let g:choosewin_tabline_replace    = 1
let g:choosewin_label_padding      = 3
let g:choosewin_blink_on_land      = 0
let g:choosewin_color_label = {
      \ 'cterm': [ 236, 2 ], 'gui': [ '#555555', '#000000' ] }
let g:choosewin_color_label_current = {
      \ 'cterm': [ 234, 220 ], 'gui': [ '#333333', '#000000' ] }
let g:choosewin_color_other = {
      \ 'cterm': [ 235, 235 ], 'gui': [ '#333333' ] }
let g:choosewin_color_overlay = {
      \ 'cterm': [ 2, 10 ], 'gui': [ '#88A2A4' ] }
let g:choosewin_color_overlay_current = {
      \ 'cterm': [ 72, 64 ], 'gui': [ '#7BB292' ] }
" }}}

" NerdCommenter {{{
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'
" }}}

" FZF, FZF.vim {{{
let g:fzf_history_dir = '~/.fzf-history'
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_colors =
\ { 'fg':      ['Normal'],
  \ 'bg':      ['Normal'],
  \ 'hl':      ['Comment'],
  \ 'fg+':     ['CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['CursorLine', 'CursorColumn'],
  \ 'hl+':     ['Statement'],
  \ 'info':    ['PreProc'],
  \ 'prompt':  ['Conditional'],
  \ 'pointer': ['Exception'],
  \ 'marker':  ['Keyword'],
  \ 'spinner': ['Label'],
  \ 'header':  ['Comment'] }
nmap <leader>F :FZF<CR>
nmap <leader>ff :Files ~<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>fl :BLines<CR>
" }}}

" vim: set ts=2 sw=2 tw=80 noet :
