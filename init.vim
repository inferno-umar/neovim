cd /home/umar/Development
set nocompatible
"hi def link gasOpcodeX86_PENT_SSE  <some_highlighting>
set number
set smartcase
set splitright
set mouse=a
"set autochdir
set encoding=utf-8
set ruler
set wildmenu
set noshowmode
set showcmd
set guioptions=
set autoread
set autoindent
set laststatus=2
set autowrite
"set matchpairs+=<:>

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>

call plug#begin('~/.config/nvim/plugged/')

"Plug 'joshdick/onedark.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'https://github.com/rbgrouleff/bclose.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf'
"Plug 'srcery-colors/srcery-vim'
"Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
"Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
"Plug 'https://github.com/sonph/onehalf'
"Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/sheerun/vim-polyglot'
"Plug 'https://github.com/tomasiser/vim-code-dark'
Plug 'https://github.com/dunstontc/vim-vscode-theme'
"Plug 'https://github.com/fneu/breezy'
"Plug 'wincent/terminus'
"Plug 'dracula/vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
"Plug 'https://github.com/ghifarit53/tokyonight-vim'
"Plug 'https://github.com/arzg/vim-colors-xcode'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/ChristianChiarulli/nvcode-color-schemes.vim'
"Plug 'ap/vim-buftabline'
Plug 'mhinz/vim-startify'
"Plug 'https://github.com/itchyny/lightline.vim'
"Plug 'metakirby5/codi.vim'
"Plug 'ayu-theme/ayu-vim'

call plug#end()

set backupdir=~/.config/nvim/swap
set directory=~/.config/nvim/swap

"Working with buffers
set splitright
set splitbelow
"let g:buftabline_show = 1
"let g:buftabline_indicators = 'true'

"Color
set termguicolors
"let g:tokyonight_style = 'storm' " available: night, storm
"let g:tokyonight_enable_italic = 1
"let g:gruvbox_italic = '1'
"let g:gruvbox_contrast_dark = 'hard'
"syntax enable
"colorscheme inferno

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}
EOF

"configure nvcode-color-schemes
let g:nvcode_termcolors=256
syntax on
colorscheme nvcode "Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif



" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif

"Compiler
"nnoremap <C-p> :!python3 %<Enter>
"Keyboard Shortcuts


"noremap <C-t> :vsplit<bar>terminal<cr>
"inoremap <C-t> <C-o>:vsplit<bar>terminal<cr>
noremap <C-t> :vsplit<cr>
inoremap <C-t> <C-o>:vsplit<cr>

"Navigation
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj


"Button
noremap <F7> :bprevious<cr>
noremap <F8> :bnext<cr>
noremap <F6> :TagbarToggle<cr>
noremap <F2> :CocEnable<cr>
noremap <F3> :CocDisable<cr>
noremap <F5> :e %<cr>

noremap <C-f> :FZF<cr>
inoremap <C-f> <C-o>:FZF<cr>

let mapleader=";"
nmap <leader>f :NERDTreeFocus<cr>
nmap <leader>s :w %<cr>
nmap <leader>q :q<cr>
nmap <leader>x :Bclose<cr>
nmap <leader>e :NERDTreeToggleVCS<cr>

"NERDTree Settings
"autocmd VimEnter * NERDTree
let NERDTreeMouseMode = 2
let NERDTreeChDirMode = 3
let g:NERDTreeShowHidden = 0
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
let g:airline_theme='dark_plus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
"let g:airline_powerline_fonts = 1
"set enc=utf-8
"set guifont=Powerline_Consolas:h11
"set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5

let g:coc_disable_startup_warning = 1

"FZF
let g:fzf_layout = { 'down': '30%' }
let g:fzf_action = {
            \ 'ctrl-t': 'split' }

"Syntax
augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.asm   set syntax=nasm
  autocmd BufNewFile,BufRead *.s set syntax=nasm
augroup END

if &compatible
  set nocompatible               " Be iMproved
endif

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
