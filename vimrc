set ruler
set cursorline
set number
syntax on

filetype plugin indent on

syntax enable
nnoremap <Leader>w <C-w><C-w>
nnoremap <leader>p oimport pdb; pdb.set_trace()<Esc>
let g:CommandTAcceptSelectionTabMap = '<C-t>'
" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
let g:python_highlight_all = 1
set cul " highlight current line
hi CursorLine term=none cterm=none ctermbg=0 " adjust color
" set the runtime path to include Vundle and initialize
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F6> :NERDTreeToggle<CR>
" Temp fix for nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
