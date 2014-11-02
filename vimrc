set expandtab
set tabstop=4
set shiftwidth=4
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
set ttyfast
set cursorline
noremap <leader>ev :e $MYVIMRC<cr>
noremap <leader>ez :e ~/.zshrc<cr>
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
command WS match ExtraWhitespace /\s\+$/
command CWS %s/\s\+$//
autocmd WinEnter * :WS
match ExtraWhitespace /\s\+$/
syntax on
set wildmode=longest,list,full
set wildmenu
set nocompatible
filetype plugin indent on
let g:molokai_original = 1
"colo molokai
hi Search cterm=NONE ctermfg=white ctermbg=blue
hi Visual cterm=NONE ctermfg=black ctermbg=green
"hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE
map <C-t> :FufFile<CR>
map <C-p>a :FufFile **/<CR>
map <C-p>t :FufFile tst**/<CR>
map <C-p>s :FufFile src**/<CR>
map <C-l> :FufLine<CR>
map <C-n> :NERDTree<CR>
map <C-n>f :NERDTreeFind<CR>
map <C-U>m :JUnit<CR>
map <C-U>f :JUnit %<CR>
map <C-J>c :JavaDocComment<CR>
map <C-J>i :JavaImport<CR>
map <C-J>o :JavaImportOrganize<CR>
map <C-J>v :Validate<CR>
map <C-J>f :JavaCorrect<CR>
noremap <Leader>s :w<CR>
noremap <Leader>vb :vertical resize 110<CR>
noremap <Leader>vs :vertical resize 80<CR>
nmap <F1> 
imap <F1> 
let g:NERDTreeWinSize = 45