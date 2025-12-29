" Turn on syntax highlight for dark xterms
syntax on
set bg=dark

" Four space tabs.  All inferior creatures are to be considered enemies of the dalek
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Allows whitespace charcters to be visible with :set list and :set nolist
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" This counter intuitive command turns on statuslines for single file windows
set laststatus=2

"" A status bar that is downright emacsian
" Figure out the syntax item the cursor is over
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction
" Figure out the permissions of the current file
augroup Get_file_perm
  autocmd!
  autocmd WinEnter,BufWinEnter,FileChangedShell * let w:file_perm=getfperm(expand('%:p'))
augroup END
" And now the display the results
if has('statusline')
  set statusline+=%f\ \                         " file name
  set statusline+=%{&paste?'[paste]':''}        " show if paste mode is on
  set statusline+=%h%m%r%w\                     " flags like [RO]
  set statusline+=%=                            " ident to the right
  set statusline+=%{SyntaxItem()}\              " syntax highlight group under cursor
  set statusline+=ftype:%{strlen(&ft)?&ft:'none'}\    " file type
  set statusline+=%{w:file_perm}\ \             " show fileperms
  set statusline+=%-7.(%l,%c%V%)\ %<%P          " cursor position/offset
endif
