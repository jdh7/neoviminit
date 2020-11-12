" TO DO:
"   - get a snippet manager
"       + create a *goes in every code header* like shbang + info
"   - get a completion plugin
"   - get a pairs () plugin

" ----------------------------Plugins(VimPlug)---------------------------------
call plug#begin('~/.vim/plugged')

"   Tools
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'neoclide/coc.nvim'
"   Color Schemes
    Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox

"NERDTree settings
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"vim-commentary settings
   "<g-c> is the comment/uncomment command which takes # argument e.g. gc3
   "will comment 3 lines below the current cursor.


" ----------------------------General Settings---------------------------------

set autoread
set wildmenu

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

" ---------------------------Key Map Settings----------------------------------

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
endif

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l


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
"left side settings
set statusline=
set statusline+=%#GruvboxAquaBold#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
"right side settings
set statusline+=%= 
set statusline+=%#GruvboxBlueBold#
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]
set statusline+=\ Time:\ %{strftime('%c')}
