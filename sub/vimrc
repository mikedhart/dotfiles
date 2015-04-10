execute pathogen#infect()
call pathogen#helptags()

" => Syntax highlighting
syntax enable
filetype plugin on

set nowrap

" => Colour scheme
colorscheme molokai

" => Tab settings
set smartindent
set tabstop=2
set shiftwidth=2

" => CtrlP
set runtimepath^=~.vim/bundle/ctrlp.vim
nnoremap leader>. CtrlPTag

" => Enable wildmenu
set wildmenu
set wildignore+=*.tmpl.php,*.tpl.php,*/tmp/*,*/public/assets/*,*/public/shared/*,*.orig,*/.git/*,*/.vagrant/*,*/vendor/assets/*,*/public/system/*,*/log/*,*/doc/*

" => Don't backup files, it's all done by git
set nobackup
set nowb
set noswapfile

" => Always show status line
set laststatus=2

" " => Spell checker
map <leader>ss :setlocal spell!<cr>

" => Allow backspaces
set backspace=2

" => Highligh searches
set hlsearch
set incsearch

" => Show line numbers
set number

" => Emmet key map
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

set tags=*/tags
