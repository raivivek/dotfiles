" Change directory to current file path
if !exists('g:no_autochdir')
  autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
endif

" Autosave silently on lost focus
au FocusLost * silent! wa

" Remove end of line white space.
command! -range=% WhitespaceErase call <SID>WhitespaceErase(<line1>,<line2>)
function! s:WhitespaceErase(line1, line2) "{{{
  let l:save_cursor = getpos('.')
  silent! execute ':'.a:line1.','.a:line2.'s/\s\+$//'
  call setpos('.', l:save_cursor)
endfunction "}}}

" disable certain features if file is large from 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile
  au!
  autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function! LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
