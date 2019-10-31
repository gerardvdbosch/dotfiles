set ruler
set relativenumber
set numberwidth=4
set number
set hidden
set nowrap
set lazyredraw
set tabstop=4
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set ttyfast
" syntax on
filetype plugin indent on
hi cursorline cterm=none term=none
highlight CursorLine ctermbg=237
set colorcolumn=120
highlight ColorColumn ctermbg=236
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Pmenu ctermbg=240 guibg=240
nnoremap <silent> <F9> :bn<CR>
nnoremap <silent> <F7> :bp<CR>
nnoremap <Space>s/ :FlyGrep<cr>

nnoremap <leader>p oimport ipdb; ipdb.set_trace()<Esc>
" set the runtime path to include Vundle and initialize
autocmd StdinReadPre * let s:std_in=1
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'janko/vim-test'
Plugin 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plugin 'davidhalter/jedi-vim'   
Plugin 'vim-airline/vim-airline'  
Plugin 'tpope/vim-commentary'  
Plugin 'tpope/vim-surround'
Plugin 'roxma/nvim-yarp'  
Plugin 'ncm2/ncm2'  
Plugin 'HansPinckaers/ncm2-jedi'  
Plugin 'ncm2/ncm2-bufword'  
Plugin 'python/black'
Plugin 'ncm2/ncm2-path'
Plugin 'wsdjeg/FlyGrep.vim'
Plugin 'terryma/vim-smooth-scroll'
call vundle#end()            " required
filetype plugin indent on    " required
let g:airline#extensions#tabline#enabled = 1
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
let ncm2#popup_delay = 1
let ncm2#complete_length = [[1,1]]
let g:ncm2#matcher = 'substrfuzzy'
nnoremap S diw"0P

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
noremap <Leader>y "*y

" path to your python
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/bin/python'
let g:black_linelength = 120
let g:black_skip_string_normalization = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(venv|git|htmlcov|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

function Highlights()
    hi semshiLocal           ctermfg=209 guifg=#ff875f
    hi semshiGlobal          ctermfg=68 guifg=#ffaf00
    hi semshiImported        ctermfg=68 guifg=#ffaf00 cterm=bold gui=bold
    hi semshiParameter       ctermfg=75  guifg=#5fafff
    hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
    hi semshiFree            ctermfg=68 guifg=#ffafd7
    hi semshiBuiltin         ctermfg=68 guifg=#ff5fff
    hi semshiAttribute       ctermfg=49  guifg=#00ffaf
    hi semshiSelf            ctermfg=172 guifg=#020202 gui=bold
    hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
    hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

    hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    sign define semshiError text=E> texthl=semshiErrorSign
endfunction
autocmd FileType python call Highlights()
