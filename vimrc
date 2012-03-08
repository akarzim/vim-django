set nocompatible

filetype on
filetype indent on
filetype plugin on

syntax enable

" register bundles found in the runtimepath
runtime bundle/vim-unbundle/unbundle.vim

" delegate configuration to files in config/
runtime! config/**/*.vim


set backspace=2
set backup
set backupdir=~/.vim/vimfiles/backup
set clipboard+=unnamed
set confirm
set cmdheight=2
set cpoptions-=<
set directory=~/.vim/vimfiles/temp
set expandtab
set fillchars=vert:\ ,stl:\ ,stlnc:\
set formatoptions=tcroqn
"set guifont=Terminus\ 8
set guioptions-=T
set hidden
set ignorecase
set iskeyword+=_,$,@,%,#,-
set laststatus=2
set lazyredraw
set linespace=0
"set listchars=eol:¬
"set list
set makeef=error.err
set mouse=a
set mousemodel=popup    " autorise le menu popup avec la souris
set nospell
set number
set pastetoggle=<F11>
set ruler
set scrolloff=5
set scrolljump=1
set showmatch
set statusline=%F%m%r%h%w%10{getfsize(expand('%'))}o\ \ \ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set shiftwidth=4
set t_Co=256
set tabstop=4                        " tabulation sur 4 caractères
set tags+=gems.tags
set wildcharm=<C-Z>
set wildmenu

"map <F9> :emenu <C-Z>

map <F9> :%s/^\d/,&<CR><C-O>qaD3@="3)P0D"<CR>6(p+q9@aVGgJZZ

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

autocmd BufWrite * silent! %s/[\r \t]\+$//

let g:closetag_html_style=1
