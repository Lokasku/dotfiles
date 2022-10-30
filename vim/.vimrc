" {{{ Plugins

execute pathogen#infect('plugins/{}')

filetype plugin indent on

" }}}

" {{{ Scripts

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" {{{ Indentation

set shiftwidth=4
set tabstop=4
set expandtab

" }}}

" {{{ Search

set hlsearch
set incsearch

" }}}

" {{{ Mapping

nnoremap ! :!vim ~/.vimrc<CR>
nnoremap , :Explore<CR>
nnoremap ; :Rex<CR>

" }}}

" {{{ Readability

syntax on

set scrolloff=10
set nowrap
set showcmd
set showmode
set showmatch
set nocompatible

" }}}

" {{{ Backup

set nobackup
set noswapfile noundofile
set nobackup nowritebackup

" }}}
