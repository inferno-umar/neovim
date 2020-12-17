cd /home/umar/Development

call plug#begin('~/.vim/plugged/')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'https://github.com/rbgrouleff/bclose.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'srcery-colors/srcery-vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/sonph/onehalf'

call plug#end()


set number
set smartcase
set splitright
set mouse=a

"Color
"set background=dark
syntax enable
let g:onehalfdark_italic=1
colorscheme onehalfdark 

set autoindent
set noshowmode
set noruler
set laststatus=0
set noshowcmd
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>

" Default tab settings
set tabstop=10
set shiftwidth=4
set softtabstop=4
set expandtab

"Compiler
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-o> :!./%:r.out<Enter>
nnoremap <C-p> :!python3 %<Enter>

"Button
nmap <F7> :bprevious<cr>
nmap <F8> :bnext<cr>
nmap <F6> :TagbarToggle<cr>

let mapleader=";"
nmap <leader>f :NERDTreeFocus<cr>
nmap <leader>e :NERDTreeToggle<cr>
nmap <leader>s :w %<cr>
nmap <leader>t :vsplit<cr>
nmap <leader>q :q<cr>
nmap <leader>x :Bclose<cr>
"nmap <leader>

"NERDTree Settings
"autocmd VimEnter * NERDTree
let NERDTreeMouseMode = 2
let NERDTreeChDirMode = 3
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['▸', '▾']

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0

let g:coc_disable_startup_warning = 1
"let g:tagbar_ctags_bin
