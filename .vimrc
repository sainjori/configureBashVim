syntax enable

colorscheme desert

set backspace=indent,eol,start  "Make backspace behave like other editors
let mapleader = ','  		"The default leader is \, but a comma is much better
set number			"Lets activate line numbers
set linespace=15                "Macvim specific lineheight. 

"-----------------------Searching-------------------------"
set hlsearch
set incsearch



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
