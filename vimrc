
" Make Vim more useful
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
" Set color scheme!
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Highlight searches
set hlsearch

" Highlight dynamically as pattern is typed
set incsearch
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=2

" enable 256 colors
set t_Co=256

" syntax enable
" set background=dark
colorscheme zellner

" Unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

" Prefernces for buffer manipulation:
" New empty buffer
let mapleader = ","
nmap <Leader>T :enew<CR>

" Move to the next buffer
nmap <Leader>l :bnext<CR>

" Move to the previous buffer
nmap <Leader>h :bprevious<CR>

" Close current buffer and move to previous one
nmap <Leader>bq :bp <BAR> bd #<CR>

"Show all open buffers and their status
nmap <Leader>bl :ls<CR>

"Buffer mappings"
nnoremap <C-Up> <C-W><C-J>
nnoremap <C-Down> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-O> <C-W><S-T>
nnoremap <F4> :bd<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <C-S-Right> :bnext<CR>
nnoremap <C-S-Left> :bprevious<CR>
nnoremap [v :vsplit<Space>
nnoremap [s :set splitright<CR>
nnoremap [ns :set nosplitright<CR>

set noexpandtab
set visualbell
" set spell
set smartindent
set autoindent

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

set softtabstop=2
set expandtab

" Automatically remove trailing whitespace
autocmd FileType c,cpp,java,php,python,markdown,matlab,lua,javascript,html,vim,zsh,sh autocmd BufWritePre <buffer> %s/\s\+$//e

" Set colorcolumn length to 80
set colorcolumn=80
highlight ColorColumn ctermbg=12

set relativenumber
