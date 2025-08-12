" PLUGINS

" plugin install commands
" https://github.com/junegunn/vim-plug
call plug#begin()
    Plug 'vim-airline/vim-airline'
"    Plug 'airblade/vim-gitgutter'
call plug#end()

" VIM CONFIG

" Disable beeping
set visualbell

" Set up auto indenting for code formatting
set autoindent
set smarttab

" disable comment on newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Set width of spaces derived from tabs
set softtabstop=4
set shiftwidth=4
augroup FileTypeSpecificAutocommands
    autocmd FileType javascript,html,css,vue,sql,json setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" Expand tabs into spaces
set expandtab

" Show line numbers
set number

" allow switching between file buffers without saving
set hidden

" Enable syntax highlighting and set theme
"set nocompatible
syntax enable
set background=dark
colorscheme night-owl
let g:airline#extensions#whitespace#enabled = 0
set iskeyword+=-
" highlight LineNr ctermfg=white

" configurations for .txt files
autocmd BufEnter *.txt colorscheme morning
autocmd BufEnter *.txt set spell
autocmd BufEnter *.txt set spelllang=en,de

" link system clipboard
set clipboard=unnamedplus

" autosave
augroup autosave
    autocmd!
    autocmd BufRead * if &filetype == "" | setlocal ft=text | endif
    autocmd FileType * autocmd TextChanged,InsertLeave <buffer> if &readonly == 0 | silent write | endif
augroup END

" set directory for swap files
set directory=$HOME/.vim/swapfiles/


""nnoremap <SPACE> <Nop>
""let mapleader=" "
"
"" change cursor based on mode for visibility purposes
""if has("autocmd")
""  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
""  au InsertEnter,InsertChange *
""\ if v:insertmode == 'i' |
""\   silent execute '!echo -ne "\e[6 q"' | redraw! |
""\ elseif v:insertmode == 'r' |
""\   silent execute '!echo -ne "\e[4 q"' | redraw! |
""\ endif
""au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
""endif
"
"
"" disable matching
"" set matchpairs-={:}
"" set matchpairs-=[:]
"" set matchpairs-=(:)
"
""
