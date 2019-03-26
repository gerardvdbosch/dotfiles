set ruler
set relativenumber
set numberwidth=4
set number
set hidden
syntax on
filetype plugin indent on
set cursorline
hi cursorline cterm=none term=none
highlight CursorLine ctermbg=237
set colorcolumn=120
highlight ColorColumn ctermbg=236
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <silent> <F9> :bn<CR>
nnoremap <silent> <F7> :bp<CR>

nnoremap <leader>p oimport ipdb; ipdb.set_trace()<Esc>
" set the runtime path to include Vundle and initialize
autocmd StdinReadPre * let s:std_in=1
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'   
Plugin 'vim-airline/vim-airline'  
Plugin 'tpope/vim-commentary'  
Plugin 'tpope/vim-surround'
Plugin 'roxma/nvim-yarp'  
Plugin 'ncm2/ncm2'  
Plugin 'HansPinckaers/ncm2-jedi'  
Plugin 'ncm2/ncm2-bufword'  
Plugin 'ncm2/ncm2-path'  
call vundle#end()            " required
filetype plugin indent on    " required
let g:airline#extensions#tabline#enabled = 1
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
let ncm2#popup_delay = 1
let ncm2#complete_length = [[1,1]]
let g:ncm2#matcher = 'substrfuzzy'
nnoremap [[ [m
nnoremap ]] ]m

nnoremap <silent><nowait> [ [[
nnoremap <silent><nowait> ] ]]

" path to your python
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
