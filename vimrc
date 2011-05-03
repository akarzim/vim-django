set nocompatible

filetype on
filetype indent on
filetype plugin on

syntax enable

let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'IndentAnything')
call add(g:pathogen_disabled, 'Python-Syntax-Folding')
"call add(g:pathogen_disabled, 'The-NERD-tree')
call add(g:pathogen_disabled, 'minibufexpl.vim')
"call add(g:pathogen_disabled, 'bufexpl.vim')
"call add(g:pathogen_disabled, 'netrw.vim')
"call add(g:pathogen_disabled, 'pyflakes-vim')
"call add(g:pathogen_disabled, 'pylint.vim')
"call add(g:pathogen_disabled, 'python.vim')
"call add(g:pathogen_disabled, 'python_match.vim')
"call add(g:pathogen_disabled, 'pythoncomplete')
"call add(g:pathogen_disabled, 'pythonEditing.vim')
"call add(g:pathogen_disabled, 'taglist.vim')
"call add(g:pathogen_disabled, 'vim-colors-solarized')
"call add(g:pathogen_disabled, 'vim-fugitive')
"call add(g:pathogen_disabled, 'vim-javascript')
"call add(g:pathogen_disabled, 'vim-jquery')
"call add(g:pathogen_disabled, 'vim-less')
"call add(g:pathogen_disabled, 'vim-surround')

call pathogen#runtime_append_all_bundles()

colorscheme solarized

highlight Normal     guifg=gray guibg=black

set autoindent
set background=dark
set backspace=2
set backup
set backupdir=~/.vim/vimfiles/backup
set clipboard+=unnamed
set cindent
set confirm
set cmdheight=2
set cpoptions-=<
set directory=~/.vim/vimfiles/temp
set expandtab
set fillchars=vert:\ ,stl:\ ,stlnc:\
set foldenable
set foldlevel=100
set foldmethod=indent
set foldopen-=search
set foldopen-=undo
set formatoptions=tcroqn
"set guifont=Terminus\ 8
set guioptions-=T
set hidden
set hlsearch                    " surligne les recherches
set ignorecase
set incsearch                   " recherche au fur et à mesure
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
set smartindent
set statusline=%F%m%r%h%w%10{getfsize(expand('%'))}o\ \ \ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set shiftwidth=4
set tabstop=4                        " tabulation sur 4 caractères
set wildcharm=<C-Z>
set wildmenu

map <F9> :emenu <C-Z>

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

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete|set expandtab
autocmd FileType xhtml set tabstop=2
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

autocmd BufRead,BufNewFile *.html  set ft=htmldjango
autocmd BufRead,BufNewFile *.js set ft=javascript.jquery
autocmd BufRead,BufNewFile *.less set ft=less

" Pylint
autocmd FileType python compiler pylint
let g:pylint_onwrite = 0
map cn :cn<CR>
map cp :cp<CR>


" Mini Buffer Explorer
let g:miniBufExplTabWrap = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplVSplit = 20
let g:miniBufExplSplitToEdge = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne=0


" Netrw
let g:netrw_sort_sequence= '[\/]$,\.py$,\.h$,\.c$,\.cpp$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$'
let g:netrw_liststyle = 1
let g:netrw_hide = 1
let g:netrw_list_hide = '.*\.pyc,\.DS_Store'

let g:closetag_html_style=1

