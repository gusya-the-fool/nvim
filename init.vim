"*****************************************************************************
" vimrc
"*****************************************************************************

""""" Tag definitions """""
" [Neovim]: settings for neovim

""""" Basic Setting """""

nnoremap <Space> <Nop>
let mapleader = "\<Space>"

""""" Visual Setting """""
syntax enable
set number           "show line number
set relativenumber
set ruler            "display the cursor position in the lower right corner of the Vim window
set cursorline       "highlight cursor line
" set guifont=SF Mono Square          "font setting

" searching and replacement
set ignorecase        "ignore case
set smartcase         "if the search pattern contains upper case, Only used when the search pattern is typed
set inccommand=split  "[Neovim] show replacing words interactively


""""" Tab Setting """""
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab         "use <Space> insted of <Tab>
set smarttab
set smartindent
set shiftround


""""" window """""


""""" keybind """""
map Y y$

" insert mode
inoremap jj <Esc>:w<Cr>

" normal mode
nnoremap <C-q> :q<Cr>         "<CTRL-q> :q
nnoremap <C-w> :w<Cr>         "<CTRL-w> + <CTRL-w> :wq
nnoremap <C-w><C-w> :wq<Cr>   "<CTRL-w> + <CTRL-w> :wq
nnoremap <C-q><C-q> :q!<Cr>   "<CTRL-q> + <CTRL-q> :q!

" switch(move) curret window
set splitbelow " make the new window appear below the current window
set splitright " make the new window appear on the right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" switch(move) curret Tab(buffer)
nnoremap <C-p> :bprev<Cr>
nnoremap <C-n> :bnext<Cr>


""""" enable file type detection, loading the plugin files and indent for specific file types """""
filetype plugin indent on


""""" etc """""


""""" init vim plugin manager(dein) """""
source ~/.config/nvim/init_dein.vim

