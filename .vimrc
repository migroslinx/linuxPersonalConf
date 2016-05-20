" Pathogen
execute pathogen#infect()
"call pathogen#helptags()

" Common
set hlsearch
set incsearch
set ts=2
set sw=2
set mouse=a
set ignorecase
set smartcase
set wildmenu
set wildmode=full
set wrap
set number
set expandtab
set foldnestmax=20
set clipboard=unnamedplus

" Encrypt
:setlocal cm=blowfish

" Programming
syntax enable
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10
set list
set lcs=tab:~·,eol:$,trail:·,nbsp:·,extends:>,precedes:<

" Autoclose
autocmd VimEnter *AutoCloseOn
" AutoCloseOff
" AutoCloseToggle 

" Tagbar and Nerd
nmap <F4> :TagbarToggle<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F8> :make
" autocmd VimEnter * NERDTree

" Minibuffer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Spell
"set spell spelllang=en_gb
"setlocal spell spelllang=en_GB
"set nospell

" Visual 
colorscheme molokai
if has("gui_running")
	" Set GUI features
	let g:molokai_original=1
	set guioptions-=T
	set guifont=Droid\ Sans\ Mono
	" set guifont=Noto\ Sans
else
	let g:rehash256=1
endif

" Vim statusline
" python3 from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

" PRQA Customizations
autocmd BufNewFile,BufReadPost *.lzz set filetype=cpp


" Mappings
cmap w!! w !sudo tee > /dev/null %
