
set nocompatible             				 	" we want the latest vim settings/option"
so ~/.vim/plugins.vim

syntax enable           						"enable syntax processing"


colorscheme desert	   							"awesome colorschme"
set backspace=indent,eol,start
set expandtab									"tabs are spaces"
set softtabstop=4       						" number of spaces in tab when editing"
set tabstop=4       							" number of visual spaces per TAB"





"-------------------UI CONFIG----------------"
set number              						"activate the line number in the editor"
set showcmd										"show command at bottom bar"
set cursorline          						" highlight current line"
filetype indent on      						" load filetype-specific indent files"
set wildmenu            						" visual autocomplete for command menu"
set showmatch           						" highlight matching [{()}]"
set t_CO=256								    "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code:h17						"Set the default font family and size.
set linespace=15   						        "Macvim-specific line-height.

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R




"------------------SEARCH CONFIG-------------"
set incsearch           " search as characters are entered"
set hlsearch            " highlight matches"

" turn off search highlight"
nnoremap <leader><space> :nohlsearch<CR>





"------------mappings-------------"
let mapleader="," 		"changing map leader from / to ," 
inoremap jk <esc>		" jk is escape"


nmap ,ev :tabedit ~/.vimrc<cr>	"make it easy to edit vimrc file, a shortcut created" 
nmap <D-1> :NERDTreeToggle<cr>





"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
nmap <D-p> :ctrlP<cr>

"/
"/ NerdTree
"/
let NERDTreeHijackNetrw = 0



"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"---------Auto Command——————“

"automatically source the vim rc file"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
