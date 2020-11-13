" TO DO:
"   - get a snippet manager
"       + create a *goes in every code header* like shbang + info
"   - fix COC window, which all the sudden is looking janky AF
"COMPLETED
"   - get a completion plugin
"   - change NERDTree default directory
"   - get a pairs () plugin
"   - install new status line
"   - finalize keybindings

" ----------------------------Plugins(VimPlug)---------------------------------
call plug#begin('~/.vim/plugged')

"   Tools
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'neoclide/coc.nvim'
"   Color Schemes
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tmsvg/pear-tree'

call plug#end()

colorscheme gruvbox

"NERDTree settings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"vim-commentary settings
   "<g-c> is the comment/uncomment command which takes # argument e.g. gc3
   "will comment 3 lines below the current cursor.


" ----------------------------General Settings---------------------------------

"NERDTree settings
autocmd vimenter * NERDTree c:/Users/John/

set nocompatible
set autoread
set wildmenu

"Change buffer directory to file location 
autocmd BufEnter * silent! lcd %:p:h 

"Enable hybrid line numbers (absolute+relative)
set number relativenumber 
set nu rnu 

"Indentation Options

set autoindent
set expandtab
filetype plugin indent on "Enabling Plugin and Indent
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4
set softtabstop=4

"Search Options

set hls is "Search highlights words as typed
set ignorecase
set incsearch
set smartcase
set ic

"Text Rendering Options

set display+=lastline
set encoding=UTF-8
set linebreak
set scrolloff=2
set sidescrolloff=5
syntax on 
set wrap

"UI Options

set laststatus=2 "always displays status bar
set ruler
set wildmenu
set tabpagemax=10
"set cursorline "highlights the line where the cursor is
set noerrorbells
set title
set background=dark
set cmdheight=1
set colorcolumn=81
set mouse=n

" ---------------------------Key Map Settings----------------------------------
"Reload source file 
nnoremap <C-s> :source %<CR>
"nnoremap <C-s> :source c:/users/john/appdata/local/nvim/init.vim<CR>

"Window resizing remaps
nnoremap <UP> :resize +2<CR>
nnoremap <DOWN> :resize -2<CR>
nnoremap <LEFT> :vertical resize +2<CR>
nnoremap <RIGHT> :vertical resize -2<CR>

"Remap ESC in terminal mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
endif

"Split window and movement
    " F2 = Horizontal split
    " F3 = Vertical split
    " F4 = Close split window
    " F5 = Resize windows

nnoremap <F2> <C-w>s
nnoremap <F3> <C-w>v
nnoremap <F4> <C-w>q
"does not work: nnoremap <F5> <C-w>=

"Window and tab navigation
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <C-t> :tabn<CR>
nnoremap <C-q> :tabc<CR>

"Tab auto-completion for COC-Python

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Refresh COC
inoremap <silent><expr> <C-space> coc#refresh()

"GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"show all diagnostics.
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
"manage extensions.
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>

"Remap ESC in normal mode
inoremap mk <ESC>

"Miscellaneous Option
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set confirm
set spelllang=en_us
set spell
set backspace=indent,eol,start "Making sure backspace works
set history=1000
set hidden
set clipboard+=unnamedplus

" ----------------------------Status Line Settings-----------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'base16_spacemacs'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode" air-line

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'



" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
