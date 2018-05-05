" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
"Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" General
syntax on
set wildmenu
set wildmode=longest:full,full
set laststatus=2
set number
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab

" NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" jedi
autocmd FileType python setlocal completeopt-=preview

" rust
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

autocmd Filetype rust nnoremap <buffer> <C-F9> :!clear; cargo build<CR>
autocmd Filetype rust nnoremap <buffer> <S-F9> :!clear; cargo run<CR>

