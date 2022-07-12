set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set colour columns for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing

syntax on                   " syntax highlighting

set t_Co=256

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

call plug#end()

nnoremap <silent> <c-j> :resize -1<CR>
nnoremap <silent> <c-k> :resize +1<CR>
nnoremap <silent> <c-h> :vertical resize -1<CR>
nnoremap <silent> <c-l> :vertical resize +1<CR>
nnoremap <silent> <c-N> :NERDTreeToggle<CR>


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
