"markdown shortcut and stuff
autocmd BufNewFile,BufFilePre,BufRead  *.md set filetype=markdown.pandoc

"python executing
autocmd BufWritePost *.py map <F12> <ESC>:!clear && python % & read<CR> 
autocmd BufWritePost *.py map <F11> <ESC>:!clear && python & read<CR>

"c compiling
autocmd BufWritePost *.c map <F12> <ESC>:!gcc % -o %.quick.out; ./%.quick.out<CR>

let python_highlight_all=1
let g:pymode_python = 'python3'
let g:pymode_options_max_line_length = 120
"fold with space
nnoremap <space> za
syntax on

set nu
set hls
set encoding=utf-8
set nocompatible
set ignorecase
set nowrap
set splitbelow splitright
set spelllang+=fr
"set foldmethod=syntax
"set foldcolumn=1
color elflord


filetype off
set rtp+=$HOME/.vim/bundle/vundle.vim/
call vundle#begin()

Plugin 'vundleVim/Vundle.vim'		"plugin Manager
Plugin 'itchyny/lightline.vim'		"status bar
Plugin 'tpope/vim-commentary'		"comment with gcc
Plugin 'mhinz/vim-startify'		"start screen 
Plugin 'StanAngeloff/php.vim'		"php syntax
Plugin 'phpactor/phpactor'		"php auto-completion
Plugin 'mhinz/vim-signify'		"git diff show
Plugin 'SirVer/ultisnips'		"fast write
Plugin 'honza/vim-snippets'		"lib of snips
Plugin 'majutsushi/tagbar'		"display tagBar with :TagbarToggle
Plugin 'mattn/emmet-vim'		"Fast http
Plugin 'jiangmiao/auto-pairs'		"auto Pair Brackets
Plugin 'kien/rainbow_parentheses.vim'	"Better Raimbow Parentheses
Plugin 'vim-syntastic/syntastic'	"errors manager
Plugin 'python-mode/python-mode'	"A python IDE
Plugin 'maralla/completor.vim'		"completion menu
Plugin 'vim-scripts/loremipsum'		"ipsum generator :Loremipsum <word>
Plugin 'Valloric/YouCompleteMe'		"completion tool
Plugin 'lilydjwg/colorizer'		"color hexcode
Plugin 'fisadev/vim-isort'		"sort python import with :Isort
Plugin 'wsdjeg/vim-lua'			"lua syntax
Plugin 'xolox/vim-notes'		"note with :Note
Plugin 'xolox/vim-misc'			"necessary for vim-notes 
Plugin 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vundle'] }
Plugin 'dense-analysis/ale'
Plugin 'turbio/bracey.vim'		"Command :Bracey to live render html/css"
Plugin 'tpope/vim-surround'		"Surround html tags"

call vundle#end()

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
