set nocompatible              " We want the latest vim settings


so ~/.vim/plugins.vim




syntax enable


set backspace=indent,eol,start  "Make backspace behave like other editors
let mapleader = ','  		"The default leader is \, but a comma is much better
set number			"Lets activate line numbers

"-----------------------Visuals-------------------------"


"colorscheme atom-dark-256
colorscheme desert
set t_CO=256
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set linespace=15                "Macvim specific lineheight. 



"-----------------------Searching-------------------------"
set hlsearch
set incsearch


"-----------------------Split Management-------------------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-----------------------Mappings-------------------------"

" Make it esay to edit the Vimrc file
"nmap ,ev :e $MYVIMRC
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>


"-----------------------Auto-Commands-------------------------"

"Automaticall source the vimrc file on save

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
