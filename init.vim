"Startup
cd /home/umar/Development

call plug#begin('~/.config/nvim/plugged/')

"Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/neoclide/coc.nvim', {'on': 'CocEnable'}
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'https://github.com/rbgrouleff/bclose.vim'
Plug 'https://github.com/rakr/vim-one'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()

set number
set smartcase
set splitright
set mouse=a
colorscheme dracula

set noshowmode
set noruler
set laststatus=0
set noshowcmd


" All config settings after this point 
" can be removed, once an Oni config option is added.

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
map <C-s> :w %<Enter>
map <C-f> :NERDTreeCWD<Enter>
map <C-t> :vsplit<CR>
map <C-q> :q<Enter>
map <C-x> :Bclose%<cr>
map <C-S>q :cquit<cr>
nmap <F8> :TagbarToggle<cr>

let mapleader=";"
nmap <leader>f :NERDTreeFocus<cr>
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>c :CocEnable<cr>

"NERDTree Settings
autocmd VimEnter * NERDTree
let NERDTreeMouseMode = 2
let NERDTreeChDirMode = 3
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"buftabline
"let g:buftabline_show = 2
"let g:buftabline_numbers = 2

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['▸', '▾']

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_powerline_fonts = 1
