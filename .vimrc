	" Specify a directory for plugins
	" - For Neovim: stdpath('data') . '/plugged'
	" - Avoid using standard Vim directory names like 'plugin'
	call plug#begin('~/.vim/plugged')

	" Make sure you use single quotes

	" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	Plug 'junegunn/vim-easy-align'

	" Any valid git URL is allowed
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'

	" Multiple Plug commands can be written in a single line using | separators
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

	" On-demand loading
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

	" Using a non-default branch
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

	" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
	Plug 'fatih/vim-go', { 'tag': '*' }

	" Plugin options
	Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

	" Plugin outside ~/.vim/plugged with post-update hook
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

	" Unmanaged plugin (manually installed and updated)
	Plug '~/my-prototype-plugin'

	" Monokai theme
	Plug 'ErichDonGubler/vim-sublime-monokai'

	" Vim-Airline
	Plug 'vim-airline/vim-airline'

	" Vim-Devicons
	Plug 'ryanoasis/vim-devicons'

	" Vim-gnupg
	Plug 'jamessan/vim-gnupg'

	" TwitVim
	Plug 'twitvim/twitvim'

	" Initialize plugin system
	call plug#end()

colorscheme sublimemonokai

filetype plugin indent on
set encoding=utf-8
set nocompatible
syntax enable
set number

" Vim-Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#xkblayout#enabled = 0

" gnupg settings
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["alex.jakovleff@egis.fi"]

" Font settings
" set guifont=Fira Code:style=Regular:h16


" Python F9 key mapping to run code
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

