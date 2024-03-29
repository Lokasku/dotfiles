" {{{ Plugins

execute pathogen#infect('plugins/{}')

filetype plugin indent on


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let floaterm_keymap_new  = '<F1>'
let g:floaterm_keymap_toggle = '<F2>'
let g:floaterm_keymap_prev = '<F3>'
let g:floaterm_keymap_next = '<F4>'
let g:floaterm_keymap_kill = '<F5>'

" Rainbow
let g:rainbow_active = 1

" Equinusocio
set termguicolors

let g:equinusocio_material_style = 'pure'
" let g:equinusocio_material_style = 'default'
" let g:equinusocio_material_style = 'darker'
colorscheme equinusocio_material

" Photon
" colorscheme photon
" colorscheme antiphoton

" Airline
" let g:airline_theme='cool'

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

syntax enable
" syntax on

set encoding=utf-8
set fileencoding=utf-8
set scrolloff=10
set nowrap
set showcmd
set showmode
set showmatch
set nocompatible
set number

if &term =~ '256color'
    set t_ut=
endif

" }}}

" {{{ Backup

set nobackup
set noswapfile noundofile
set nobackup nowritebackup

" }}}
