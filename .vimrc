call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set number
set hlsearch
set autoindent
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,gb18030,gb2312,cp936
set shiftwidth=4    
set tabstop=4       
set smarttab        

map <F10> :NERDTreeToggle<CR>
map <C-Left>  <C-W>h
map <C-Right> <C-W>l
map <C-Up>    <C-W>k
map <C-Down>  <C-W>j
inoremap <silent><expr> <Down>
	\ coc#pum#visible() ? coc#pum#next(1) :
	\ "\<Down>"
inoremap <silent><expr> <Up>
	\ coc#pum#visible() ? coc#pum#prev(1) :
	\ "\<Up>"
inoremap <silent><expr> <CR>
	\ coc#pum#visible() ? coc#pum#confirm() :
	\ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <Left>
	\ coc#pum#visible() ? coc#pum#cancel() :
	\ "\<Left>"

autocmd vimenter * NERDTree | wincmd l

let NERDTreeShowHidden=1

syntax on

colorscheme desert

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

