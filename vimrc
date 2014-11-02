execute pathogen#infect()

set expandtab
syntax on
filetype plugin indent on

set tabstop=4                       " 4 tabs per space
set shiftwidth=4                    " shift blocks by 4 spaces
set number                          " show line numbers
set nowrap                          " don't wrap lines
set scrolloff=5                     " show 5 lines above and below when scrolling
set showmatch                       " show matching bracket
set showmode                        " show mode in status bar
set showcmd                         " show typed command in status bar
set title                           " show file in titlebar
set ruler                           " show cursor position in status bar
set ignorecase                      " case insensitive search
set smartcase                       " become case sensitive with uppercase
set bs=indent,eol,start             " allow backspacing everything
set laststatus=2                    " use 2 lines for status bar
set hlsearch                        " highlight searched words
set incsearch                       " highlight search as you type
set ttyfast                         " who would want slow
set cursorline                      " highlight the line
set noswapfile                      " no swp files created
set wildmode=longest,list,full
set wildmenu
set nocompatible                    " oh no

" Highlight tabs and trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
command WS match ExtraWhitespace /\s\+$/
command CWS %s/\s\+$//
autocmd WinEnter * :WS
match ExtraWhitespace /\s\+$/

" Theme
" let g:molokai_original = 1
let g:rehash256 = 1
colo molokai
hi Search cterm=NONE ctermfg=white ctermbg=blue
hi Visual cterm=NONE ctermfg=black ctermbg=green
hi Normal ctermfg=252 ctermbg=none " For transparent terminals
"hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE

" Fuzzy finder bindings
map <C-t> :FufFile<CR>
map <C-p>a :FufFile **/<CR>
map <C-p>t :FufFile tst**/<CR>
map <C-p>s :FufFile src**/<CR>
map <C-l> :FufLine<CR>

" NERDTree
map <C-n> :NERDTree<CR>
map <C-n>f :NERDTreeFind<CR>
let g:NERDTreeWinSize = 45

" Eclim bindings
map <C-U>m :JUnit<CR>
map <C-U>f :JUnit %<CR>
map <C-J>c :JavaDocComment<CR>
map <C-J>i :JavaImport<CR>
map <C-J>o :JavaImportOrganize<CR>
map <C-J>v :Validate<CR>
map <C-J>f :JavaCorrect<CR>

" Misc
noremap <Leader>s :w<CR>                " save
nmap <F1>                             " F1 does nothing
imap <F1>                             " F1 does nothing
nmap \r :setlocal relativenumber!<CR>   " toggle relative line numbers
nmap \p :set paste!<CR>                 " toggle paste mode
nmap \h :nohl<CR>                       " turn off highlighting
nmap \n :NERDTreeToggle<CR>             " toggle nerd tree
nmap \t 0gg                             " goto top
nmap \a O<ESC>                          " insert lines above
nmap \b o<ESC>                          " insert lines below

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Arrow keys resize windows
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>

