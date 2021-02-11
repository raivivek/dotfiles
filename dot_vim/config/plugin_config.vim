" Plugin Specific Settings
"---------------------------------------------------------

" ALE {{{
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_fix_on_save = 1
let g:ale_linters = {
    \ 'sh': ['language_server'],
    \ 'python': ['flake8'],
\ }
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\   'javascript': ['eslint'],
\}
" }}}

" Coc.vim {{{
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K for show documentation in preview window<Paste>
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" }}}

" GundoTree {{{
nnoremap <Leader>gu :GundoToggle<CR>
" }}}

" SuperTab {{{
" let g:SuperTabDefaultCompletionType = "<c-n>"
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

" vim: set ts=2 sw=2 tw=80 noet :
