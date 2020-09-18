call plug#begin(stdpath('data') . '/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'patstockwell/vim-monokai-tasty'

call plug#end()


" Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:indentLine_color_gui = '#363442'

set listchars=tab:>·,trail:~,extends:>,precedes:<
set list

syntax on
colorscheme vim-monokai-tasty
let g:vim_monokai_tasty_italic = 1
let g:lightline = {
      \ 'colorscheme': 'monokai_tasty',
      \ }

" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set clipboard=unnamedplus

" tab
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab " use spaces
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab

