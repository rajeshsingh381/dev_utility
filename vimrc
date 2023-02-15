set nocompatible

" ====================================
" First time load, install plugins
" ====================================
if empty(glob("~/.vim/autoload/plug.vim"))
    if executable('git') && executable('curl')
        execute('silent !mkdir -p ~/.vim/swap && mkdir -p ~/.vim/undo && mkdir -p ~/.vim/autoload && curl -sfLo ~/.vim/autoload/plug.vim https://raw.github.    else
        echom "Please install git and curl to allow plugin configuration through vim-plug"
    endif
endif

" ====================================
" Plugin Management with vim-plug
" ====================================
call plug#begin()
Plug 'tpope/vim-sensible'              " Defaults everyone can agree on
Plug 'tpope/vim-sleuth'                " Heuristically set buffer options
Plug 'tpope/vim-fugitive'              " a Git wrapper so awesome, it should be illegal
Plug 'vim-airline/vim-airline'         " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'  " A collection of themes for vim-airline
call plug#end()


set background=dark                    " Use dark background
set number                             " Turn on line numbers
set hlsearch                           " Highlight search phrase matches (reset with :noh)
set incsearch                          " Incrementally search as you type the search pattern
set nowrap                             " Don't wrap lines
set hidden                             " Allow changing buffer without saving

" Use an undo file and set a directory to store the undo history
set undofile
set undodir=~/.vim/undo/

" put swap files in common dir
set backupdir=~/.vim/swap//,.,/tmp
set directory=~/.vim/swap//,.,/tmp

" automatically create folds, open all folds
set foldmethod=syntax
set foldlevelstart=99


" vim-airline: put a buffer list at the top
" ------------
let g:airline#extensions#tabline#enabled = 1     " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline#extensions#tabline#buffer_nr_show = 1
