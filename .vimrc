"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                
"                  ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"                  ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"                  ██║   ██║██║██╔████╔██║██████╔╝██║     
"                  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                   ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                    ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"                
"                    https://github.com/brandon-wallace
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 

" Do not make vim compatible with vi.
set nocompatible

" Allow plugins to be used.
filetype plugin indent on

" Use syntax highlighting.
syntax on

" Always leave 10 rows below cursor.
set scrolloff=10

" Display a column with relative number column.
set relativenumber

" Add numbers to the lines.
set number

" Show cursor line.
set cursorline

" Show cursor column.
set cursorcolumn

" Set title of window to the name of the file.
set title

" Backup files.
set backup

" Backup directory.
set backupdir=~/.vim/backup/

" Hide mouse when typing.
set mousehide

" Check to see if an external file has changed.
set autoread

" Split window with cursor in bottom window.
set splitbelow splitright

" Leave windows uneven after split or close.
set noequalalways

" Switch buffers without saving.
set hidden

" Show error bell visually.
set visualbell

" Set the text width. 
set textwidth=80

" Allow backspacing to work as expected.
set backspace=indent,eol,start

" Tabbing over moves four spaces.
set tabstop=4

" Number of spaces to use in automatically indent. 
set shiftwidth=4

" Copy indent from current line when starting a new line.
set autoindent

" Use space characters instead of tabs.
set expandtab

" Incremental search an you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for captial letters.
set smartcase

" Show the line and column position of cursor.
set ruler

" Show partial command in the last line of the screen.
set showcmd

" Show the mode in the last line.
set showmode

" Show matching words.
set showmatch

" Tenths of a second to show matching brackets.
set matchtime=2

" Use highlighting when doing a search.
set hlsearch

" Change the command history (default=20).
set history=1000

" If using a fast terminal.
set ttyfast

" Set the character enconding when writing file.
set fileencoding=utf-8

" Set the character encoding.
set encoding=utf-8

" Show auto complete menus.
set wildmenu

" Make wildmenu behave like bash completion.
set wildmode=list:longest

" Ignore files with these extentions.
set wildignore=*.odt,*.doc*,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.JPG,*.exe,*.bmp,*.flv,*.gz,*.tgz,*.zip,*.iso,*.gzip,*.mov,*.xz,*.tar,*.img,*.docx,*.xlsx,*.xls

" Temporary files.
set directory=/tmp

" Where the backups are stored.
set backupdir=~/.vim/backup

" Enable Python syntax highlighting features.
let python_highlight_all = 1

"PLUGINS ----------------------------------------------------------------- {{{

" Specify a directory for plugins.
" Avoid using standard Vim directory names like 'plugin'.
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes!!

Plug 'preservim/nerdtree'

Plug 'davidhalter/jedi-vim'

Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'https://github.com/airblade/vim-gitgutter.git'

Plug 'preservim/nerdcommenter', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}

" Initialize plugin system.
call plug#end()

" Instant-Markdown settings.
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 1
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" Recommended Syntastics settings.
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
    
" Check syntax for python3 rather than python2.
let g:syntastic_python_python_exec = '/usr/bin/python3'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Set the leader to '-' instead of the default '\'.
let mapleader = "-"

" Set localleader to \.
let maplocalleader = "\\"

" Turn off search highlighting.
nnoremap <silent> <localleader>\ :nohlsearch<cr>

" Map ii to <Esc> only while in insert mode.
inoremap ii <Esc>

" Map <space> to ':'.
nnoremap <space> :

" Press <leader>- to go back to the last cursor position.
nnoremap <leader>- ``

" Open new lines without going into insert mode.
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Print file from a Linux machine.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
nnoremap <silent> <leader>p :%w !lp<cr>

" Easy brackets.
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>i
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i
inoremap <leader>{ {}<esc>i
inoremap <leader>< <><esc>i


" Center the cursor when moving to the next word.
nnoremap n nzz
nnoremap N Nzz

" Map <F3> to nerdtree toggle.
nnoremap <F3> :NERDTreeToggle ~/bin<cr>

" Have nerdtree ignore certain files.
let NERDTreeIgnore=['\.jpg$', '\.mp4$', '\.zip$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.svg$', '\.gif$', '\.tar$', '\.gz$', '\.xz$', '\.bz2$', '\.db$']

" Yank from cursor to the end of line.
nnoremap Y y$

" Select all text in buffer.
noremap <leader>a ggVG

" Press -v to edit .vimrc.
nnoremap <leader>v :e $MYVIMRC<cr>

" Press -s to source the .vimrc file.
nnoremap <leader>s :w<CR>:source $MYVIMRC<cr>

" See the fonts available on the system.
" syntax - :set guifont=Hack\ Bold\ 12.
nnoremap <leader>f :set guifont=*<cr>

" Press -S to check spelling in current buffer.
nnoremap <Leader>S <ESC>:setlocal spell spelllang=en_us<CR>

" Run the Python script by pressing F5.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" Run the Bash script by pressing F6.
nnoremap <f6> :w <CR>:!clear <CR>:!bash % <CR>

" Run make by pressing F7.
nnoremap <f7> :make

" Paste a block of code without formatting it.
nnoremap <mousemiddle> <esc>"*P

" Easy navigate the split view.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Setting for netrw.
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 20

" }}}


" VIMSCRIPT FILE SETTINGS ------------------------------------------------ {{{

" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Turn on cursorline and cursorcolumn only in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" Auto load a template for a new file if one exists.
augroup filetype_html
    autocmd!
    autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
augroup END

" Set indentation of HTML to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If vim version is equal to or greater than 7.3 enable undofile.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

if has("gui_running")

    " Set the background tone.
    set background=dark
    
    " Set the color scheme.
    colorscheme one-dark

    " Set font to DejaVu Sans Mono 10
    set guifont=Hack\ Regular\ 12

    " Display more of the file by default.
    if has('gui_running')
    
        " Hide the toolbar.
        set guioptions-=T
        
        " Hide the the left-side scroll bar.
        set guioptions-=L
        
        " Hide the the left-side scroll bar.
        set guioptions-=r
        
        " Hide the the menu bar.
        set guioptions-=m
        
        " Hide the the bottom scroll bar.
        set guioptions-=b
        
    endif
    
    " Map the F4 key to toggle the menu, tool, and scroll bar.
    nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
        \set guioptions-=mTr<Bar>
        \else<Bar>
        \set guioptions+=mTr<Bar>
        \endif<CR>

endif

" }}}


"STATUS LINE ------------------------------------------------------------ {{{


    " Set colors for the status line.
    hi User0 ctermbg=black ctermfg=yellow guibg=black guifg=yellow gui=bold
    hi User1 ctermbg=blue ctermfg=black guibg=white guifg=blue gui=bold

    " Clear status line when vimrc is reloaded.
    set statusline=

    " White on blue.
    set statusline+=%0*

    " Full path to the file.
    set statusline+=\ %F

    " Modified flag.
    set statusline+=\ %M

    " Blue on white.
    set statusline+=\ %1*

    " File type.
    set statusline+=\ %Y

    " Read only.
    set statusline+=\ %R

    " White on blue.
    set statusline+=\ %0*

    " Show the buffer number
    set statusline+=\ buff:\ %n

    " Blue on white.
    set statusline+=\ %1*

    " Ascii.
    set statusline+=\ %b

    " White on blue.
    set statusline+=\ %0*

    " Hex.
    set statusline+=\ 0x%B

    " Blue on white.
    set statusline+=\ %1*

    " Color.
    set statusline+=%#warningmsg#

    " Syntastic status line flag.
    set statusline+=%{SyntasticStatuslineFlag()}
     
    set statusline+=%*

    " Blue on white.
    set statusline+=%1*

    " Split the left from the right.
    set statusline+=%=

    " White on blue.
    set statusline+=\ %0*

    " Show the total number of lines in the file.
    set statusline+=\ lines:\ %L
     
    " Blue on white.
    set statusline+=\ %1*

    " Show the row the cursor is on.
    set statusline+=\ row:\ %l

    " Blue on white.
    set statusline+=\ %0*

    " Show the column the cursor is on.
    set statusline+=\ col:\ %c
     
    " Blue on white.
    set statusline+=\ %1*

    " Show the lenth of the line.
    set statusline+=\ percent:\ %p%%
     
    " White on blue.
    set statusline+=\ %0*

    " Show the status on the second to last line.
    set laststatus=2

    " }}}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
