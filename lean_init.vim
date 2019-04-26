
set termguicolors
set hidden                      "hid:   don't care about closing modified buffers
set history       =1000         "hi:    keep 50 lines of command line history
set winminheight  =0            "wmh:   allow showing windows as just status bars
set mouse         =a            "       Enable the use of a mouse
set nowrap                      "       soft-wrapping is off by default

"
" Folding
"

set foldmethod    =syntax       "fdm:   fold by the indentation by default
set foldnestmax   =10           "fdn:   deepest fold is 10 levels
set nofoldenable                "nofen: don't fold by default
set foldlevel     =1

"
" Search
"

set ignorecase                  "ic:    ignores case when pattern matching
set smartcase                   "scs:   ignores ignorecase when pattern contains uppercase characters
set gdefault                    "gd:    Substitute all matches in a line by default

"
" Programming
"

set cindent                     "cin:   enables automatic indenting c-style
set cinoptions=l1,j1            "cino:  affects the way cindent reindents lines
set showmatch                   "sm:    flashes matching brackets or parenthasis
set matchtime=5                 "mat:   How long to flash brackets
set iskeyword+=-                "recognised hyphen is words

"
" Tabs
"

set tabstop           =2        "ts:    number of spaces that a tab renders as
set shiftwidth        =2        "sw:    number of spaces to use for autoindent
set softtabstop       =2        "sts:   number of spaces that tabs insert
set expandtab                   "et:    uses spaces instead of tab characters
set shiftround                  "sr:    rounds spaces to tabs in > and <

"
" Backups
"

set nobackup                    "nobk:  in this age of version control, who needs it
set nowritebackup               "nowb:  don't make a backup before overwriting
set noswapfile                  "noswf: don't litter swap files everywhere
set directory=/tmp              "dir:   directory for temp files

"
" Hud and status info
"

set number                      "nu:    numbers lines
set relativenumber              "other line offsets from current line
set numberwidth       =5        "nuw:   width of number column
set showmode                    "smd:   shows current vi mode in lower left
set cmdheight         =1        "ch:    make a little more room for error messages
set scrolloff         =5        "so:    places a couple lines between the current line and the screen edge
set sidescrolloff     =5        "siso:  places a couple lines between the current column and the screen edge
set lazyredraw                  "lz:    will not redraw the screen while running macros (goes faster)

set clipboard         =unnamed  "       Use the system clipboard, implicitly state * register

set textwidth         =80
set colorcolumn       =+1

set formatoptions     +=lb
set formatoptions     -=o       "fo:    Don't continue comments when pressing o/O
set formatoptions     +=n       "fo:    Wrap numbered list accordingly
set nrformats         +=alpha

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

set list
set listchars=trail:·,tab:»·

if has('linebreak')
  try
    set breakindent             "bri:   visually indent wrapped lines
    let &showbreak='↳'
  catch /E518:/
    " Unknown option: breakindent
  endtry
endif

"
" Menu compilation
"

set wildmenu                    "wmnu:  enhanced ed command completion
set wildignore+=*.~             "wig:   ignore compiled objects and backups
set wildignore+=*.o,*.obj,*.pyc
set wildignore+=.sass-cache,tmp
set wildignore+=node_modules,.git,venv,build
set wildignore+=*.gif,*.jpg,*.jpeg,*.otf,*.png,*.svg,*.ttf
set wildignore+=log,logs
set wildignore+=vendor
" set wildmode=longest:full,list:full
set wildmode=longest,full

"
"File Navigation with 'gf'
"
set path=.,src,node_modules
set suffixesadd=.js,.jsx

" Shell (neovim)
"

if $SHELL !=# "" | set shell=$SHELL | endif


"---------------------------------------------------------
" PLUGINS
"---------------------------------------------------------

call plug#begin('~/.config/nvim/plug')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'

" ncm2 specific
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'Shougo/neco-vim'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern', {'do': 'npm install'}
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-vim'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-ultisnips'

Plug 'SirVer/ultisnips'

Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'craigemery/vim-autotag'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'justincampbell/vim-eighties'

Plug 'mattn/emmet-vim'
Plug 'cohama/lexima.vim'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'

Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'sass', 'scss', 'less'] }

Plug 'metakirby5/codi.vim'
"True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'
" `gS` to split a one-liner into multiple lines
" `gJ` to join a block into a single-line statement.
Plug 'AndrewRadev/splitjoin.vim'

" colorschemes
"-------------
Plug 'agreco/vim-citylights'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'jacoborus/tender.vim'
Plug 'junegunn/seoul256.vim'
Plug 'kaicataldo/material.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'mswift42/vim-themes'
Plug 'nightsense/carbonized'
Plug 'nightsense/cosmic_latte'
Plug 'nightsense/snow'
Plug 'rakr/vim-one'
Plug 'romainl/flattened'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'YorickPeterse/happy_hacking.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"==============================
" Variables
"==============================

let mapleader = ','

"----------| Python |---------{{{

let g:python_host_prog = expand('~/.pyenv/versions/py2nvim/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/py3nvim/bin/python')
"}}}

" Theme colors and status line (airline)
"---------------------------------------

let g:solarized_use16 = 1
let g:one_allow_italics = 1

let ayucolor='light'
colorscheme ayu
set background=light
let g:airline_theme='one'

" Material theme settings
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1

"extensions
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#ale#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"symbols
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"
let g:airline_symbols.branch = ''
let g:airline_skip_empty_sections = 1

"Plugins Configuration
"---------------------

"=================ALE============= {{{

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'python': ['prospector'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'python': ['prospector', 'yapf', 'isort'],
\   'css': ['stylelint'],
\   }

nmap <leader>af <Plug>(ale_fix)
nmap <leader>ad :ALEDetail<cr>

" Use a slightly slimmer error pointer
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" error message format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" navigate errors
nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>j <Plug>(ale_next_wrap)

" }}}

"------------------- Fugitive-----------
nnoremap <leader>z :Gstatus<CR>:only<CR>

"------------FZF------------- {{{
let g:fzf_tags_command = 'ctags -R'
let g:fzf_buffers_jump = 1

nnoremap <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>gf :GFiles<cr>
map <leader>tg :Tags<cr>
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Custom colors to match theme
let g:fzf_colors = {
\   'bg+':     ['bg', 'Normal'],
\   'fg+':     ['fg', 'Statement'],
\   'hl':      ['fg', 'Underlined'],
\   'hl+':     ['fg', 'Underlined'],
\   'info':    ['fg', 'MatchParen'],
\   'pointer': ['fg', 'Special'],
\   'prompt':  ['fg', 'Normal'],
\   'marker':  ['fg', 'MatchParen']
\ }
" }}}

let g:rg_command = '
    \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
    \ -g "*.{js,json,css,sass,php,md,styl,pug,jade,html,config,py,go,hs,rb,conf,fa,lst}"
    \ -g "!{.config,.git,node_modules,__pycache__,.ropeproject,vendor,venv,build,yarn.lock,*.pyc,*.sty,*.bst,*.coffee,dist}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

"IndentLine
"------------------- {{{
let g:indentLine_enabled = 0
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}}

"Tagbar
"------------------
let g:tagbar_iconchars = ['↠', '↡']
nmap <localleader>tt :TagbarToggle<CR>

"NERDTree
"-------- {{{
let g:NERDTreeMinimalUI = 1
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = 'right'
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '├'
"'↠'
let g:NERDTreeDirArrowCollapsible ='└' 
"'↡'
map <leader>d :NERDTreeToggle<CR>
" }}}

"Emmet
"----------------
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" UltiSnips
" ------------- {{{
let g:UltiSnipsExpandTrigger = '<leader>x'
let g:UltiSnipsListSnippets  = '<c-s-tab>'
let g:UltiSnipsEditSplit     = 'vertical'

"c-j c-k for moving in snippet
let g:UltisnipsJumpForwardTrigger       = "<c-j>"
let g:UltisnipsJumpBackwardTrigger      = "<c-k>"
let g:UltisnipsRemoveSelectModeMappings = 0

" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" }}}


"JSX
"--------------------------
" Allow JSX syntax in JS files
let g:jsx_ext_required = 0

"Easy Align
"------------------------------ {{{
"Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"Start interative EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}


" Session management
"-------------------------------{{{
" let g:sessions_dir = '~/.vim/sessions'
" exec 'nnoremap <Leader>ss :mks! ' . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
" exec 'nnoremap <Leader>sr :so ' . g:session_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'

nnoremap <Leader>ss :mks!  ~/.vim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>
nnoremap <Leader>sr :so  ~/.vim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>
"}}}

"------------------------------------------------------
" Autocommands
"------------------------------------------------------

" Save automatically all the time
" augroup auto_save
"   autocmd!
"   " Frequently save automatically
"   autocmd BufLeave,FocusLost,InsertLeave,TextChanged * silent! wall
"   " Check for file changes
"   autocmd BufEnter,BufWinEnter,CursorHold,FocusGained * silent! checktime
" augroup END

" Close quickfix & help with q, Escape, or Control-C
" Also, keep default <cr> binding
augroup easy_close
  autocmd!
  autocmd FileType help,qf nnoremap <buffer> q :q<cr>
  autocmd FileType help,qf nnoremap <buffer> <Esc> :q<cr>
  autocmd FileType help,qf nnoremap <buffer> <C-c> :q<cr>
augroup END

augroup filetype_tweaks
  autocmd!
  " .md is markdown, not modula
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  autocmd BufRead,BufNewFile *.es6 set filetype=javascript
  autocmd BufRead,BufNewFile *.cson set filetype=coffee
  
  autocmd BufRead,BufNewFile .eslintrc,.jscsrc,.jshintrc,.babelrc,.stylelintrc set ft=json

  " Not all files should wrap automatically
  autocmd BufNewFile,BufReadPost *.txt,*.md,*.json,*.conf,*.ini,*.pug
    \ setlocal textwidth=0


  " Linting for vimscript
  if executable('vint')
    autocmd FileType vim setlocal makeprg=vint\ --enable-neovim\ \-s\ %
  endif

  if executable('yapf')
    autocmd FileType python setlocal formatprg=yapf
  endif

  " Folds 
  autocmd FileType vim set fdm=marker fdl=9
  autocmd FileType css,less,scss setlocal fdm=marker fmr={,}
  autocmd FileType coffee,python setlocal foldmethod=indent
  autocmd FileType javascript,typescript setlocal foldmethod=syntax

  " Python uses 4 spaces
  autocmd FileType python setlocal sw=4 sts=4 ts=4 et autoindent smarttab textwidth=80

augroup END

augroup emmet_plugin
  autocmd!
  autocmd FileType html,css,javascript,javascript.jsx EmmetInstall
  autocmd FileType html,css,javascript imap <s-tab> <plug>(emmet-expand-abbr)
augroup END

augroup ncm2_setup
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  autocmd TextChangedI * call ncm2#auto_trigger()
augroup END
"
" KEYBINDINGS
" ======================================

"-------------------------------------
" Easy editing & reloading of init.vim
"-------------------------------------
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


"------------------------------------
" jk <Esc>
"------------------------------------
inoremap jk <Esc>
xnoremap jk <Esc>
cnoremap jk <C-c>

"-----------------------------------
" Convinient Keys
"-----------------------------------
nnoremap ; :
vnoremap ; :
nnoremap ! :!
noremap  - ;
noremap! § #
noremap  § #
lnoremap § #

"-----------------------------------
" Paging up and down
"-----------------------------------
noremap <C-F> <C-D>
noremap <C-B> <C-U>
nnoremap <Space> <C-D>

"-----------------------------------
" Split windows navigation
"-----------------------------------
nnoremap <tab> <c-w>w
nnoremap <S-tab> <c-w>W

"----------------------------------
" Buffer navigation
"----------------------------------
nnoremap j gj
nnoremap k gk
nnoremap 0 ^

nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>
nnoremap <BS> :bd<cr>

"----------------------------------
" Tabs
"----------------------------------
" Quickly edit current buffer in a new tab (poor-man's maximize)
nnoremap <leader>te :tabedit %<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>


" Tabs
nnoremap <leader>1 1gt<cr>
nnoremap <leader>2 2gt<cr>
nnoremap <leader>3 3gt<cr>
nnoremap <leader>4 4gt<cr>
nnoremap <leader>5 5gt<cr>
nnoremap <leader>6 6gt<cr>
nnoremap <leader>7 7gt<cr>

"----------------------------------
" Insert Mode - Movement
"----------------------------------
inoremap <c-h> <c-o>h
inoremap <c-l> <c-o>a
inoremap <c-^> <c-o><c-^>

"----------------------------------
" Insert Mode - Modification
"----------------------------------
inoremap <c-d> <esc>ddi
inoremap <c-w> <esc>diwi
inoremap <c-u> <esc>viw~ea

"----------------------------------
" Folding
"----------------------------------
nnoremap <cr> za<cr>k
nnoremap <Leader><Leader> zR<cr>

"----------------------------------
" Insert line above and below
"----------------------------------
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

"----------------------------------
" CAPS- CAPPED commands
"----------------------------------
nnoremap U viw~<esc>
vnoremap D yP'<
nnoremap Y y$
nnoremap Q @q
nnoremap J Jdw

"----------------------------------
" Move line(s) / Visual block
"----------------------------------
nnoremap <silent> <c-k> :move-2<cr>
nnoremap <silent> <c-j> :move+<cr>
xnoremap <silent> <c-k> :move-2<cr>gv
xnoremap <silent> <c-j> :move'>+<cr>gv
xnoremap < <gv
xnoremap > >gv

if has("mac") || has("macunix")
  nmap <D-j> <c-j>
  nmap <D-k> <c-k>
  xmap <D-j> <c-j>
  xmap <D-k> <c-k>
endif

"----------------------------------
" Terminal
"----------------------------------
tnoremap <esc> <c-\><c-n>
tnoremap <A-[> <esc>
tnoremap <c-v><esc> <esc>

"----------------------------------
" Utility
"----------------------------------
"trim trailing whitespace
nnoremap <leader>w :%s/\s\+$//e<cr>

" <leader>su starts a find a replace for word under cursor
nnoremap <leader>su :%s/\<<C-R><C-W>\>/<C-R><C-W>/gc<Left><Left><Left>

"remove search highlighting
nnoremap <Leader><Space> :nohl<Bar>:echo<CR>

" Run `.` or macro over selected lines, taken from:
" https://reddit.com/r/vim/comments/3y2mgt
vnoremap . :normal .<CR>
vnoremap @ :normal @

" Quickly open a shell below current window
nnoremap <leader>sh :below 10sp term://$SHELL<cr>

" Change local directory to current file
nnoremap <leader>cd :lcd %:p:h<cr>

nnoremap } }zz
nnoremap { {zz
nnoremap [[ [[zz
nnoremap ]] ]]zz

" Enable tab/enter if completion menu is open
inoremap <expr> <Tab> (pumvisible() ? "\<C-n>" : "\<Tab>")
inoremap <expr> <S-Tab> (pumvisible() ? "\<C-p>" : "\<S-Tab>")

"disable vim's regex for normal regex
" nnoremap / /\v
" nnoremap / /\v
