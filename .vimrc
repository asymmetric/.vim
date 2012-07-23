call pathogen#infect()
call pathogen#runtime_append_all_bundles()

set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set omnifunc=syntaxcomplete#Complete

set nu
set statusline=%m\[%n\]%<\ %f:%l\ %h%r%w%y\ %{&ff}\ %=\ col:%c%V\ lin:%l\/%L\ %P
set laststatus=2
set hidden

set ignorecase
set smartcase

" tabs and such
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2


augroup ftruby
    autocmd!
    autocmd FileType ruby highlight ExtraWhitespace ctermfg=15 ctermbg=4 guifg=#CF6A4C guibg=#420E09
    autocmd FileType ruby match ExtraWhitespace /\s\+$\| \+\ze\t/
    autocmd FileType ruby set omnifunc=rubycomplete#Complete
augroup END

"autocmd BufRead *.git/COMMIT_EDITMSG DiffGitCached | wincmd p
autocmd BufRead,BufNewFile *.less setfiletype css
autocmd BufRead,BufNewFile *.json setfiletype javascript
autocmd BufRead,BufNewFile *.dryml setfiletype html
autocmd FileType haml highlight ExtraWhitespace ctermfg=15 ctermbg=4 guifg=#CF6A4C guibg=#420E09
autocmd FileType haml match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd FileType haml set sw=2 sts=2 ts=2

autocmd FileType python set et sw=4 ts=4 sts=4

autocmd BufRead,BufNewFile *.zsh-theme setfiletype zsh

runtime macros/matchit.vim

function! VerticalSplitBuffer(buffer)
  execute "vert bo sb" a:buffer
endfunction

command! -nargs=1 -complete=buffer Vsb call VerticalSplitBuffer(<f-args>)
cabbr vsb Vsb

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

nnoremap <Leader>g :GundoToggle<CR>

nnoremap ` '
nnoremap ' `

nnoremap <Leader>b :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_autoclose = 1

nnoremap <Leader>r :CommandTBuffer<CR>

set wildmenu
set wildmode=longest,full
"set wildignore=tmp/**,vendor/gems/**,vendor/cache/**,vendor/bundle/**
set scrolloff=3

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" remember marks, registers, searches, buffer list
"set viminfo='20,<50,s10,h,%

set nobackup
set nowritebackup
set noswapfile

colors twilight256
