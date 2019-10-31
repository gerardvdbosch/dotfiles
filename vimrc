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
nnoremap <silent> <F9> :bn<CR>
nnoremap <silent> <F7> :bp<CR>

nnoremap <leader>p oimport pdb; pdb.set_trace()<Esc>
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
call vundle#end()            " required
filetype plugin indent on    " required
let g:airline#extensions#tabline#enabled = 1
set completeopt=menuone,noselect,noinsert
let g:ctrlp_custom_ignore = '\v\.(npy|jpg|pyc|so|dll)$'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
     \ 'dir':  '\v[\/]\.(venv|git|htmlcov|node_modules)$',
     \ 'file': '\v\.(exe|so|dll)$',
     \ 'link': 'some_bad_symbolic_links',
     \ }
