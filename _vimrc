" ----------------------------------------------------------------------------
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Do not make vim compatible with vi.
set nocompatible

" Add numbers to the lines.
set number

" Use syntax highlighting.
syntax on

" Show cursor line.
set cursorline

" Show cursor column.
set cursorcolumn

" Set title of window to the name of the file.
set title

" Backup files.
set nobackup

" Hide mouse when typing.
set mousehide

" Check to see if an external file has changed.
set autoread

" Split window with cursor in bottom window.
set splitbelow

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

" Stop spaces from being turned into tabs.
set expandtab

" Incremental search an you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

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

" Set these options if using gvim.
if has("gui_running")

    " Hide menu bar.
    set guioptions=-m

    " Hide tab bar.
    set guioptions=-T

    " Remove right-hand scroll bar.
    set guioptions=-r

    " Make the window be this number of lines long.
    set lines=50

    " Make the window have this number of columns.
    set columns=120

    " Set the colorscheme.
    colorscheme slate

endif


" MAPPINGS --------------------------------------------------------------- {{{

" Set the leader to '-' instead of the default '\'.
let mapleader = "-"

" Map ii to <Esc> only while in insert mode.
inoremap ii <esc>

" Map <space> to ':'.
nnoremap <space> :

" Yank from cursor to the end of line.
nnoremap Y y$

" Press -S to check spelling in current buffer.
nnoremap <Leader>S <ESC>:setlocal spell spelllang=en_us<CR>

" Emulate Linux middlemouse button paste.
nnoremap <mousemiddle> <esc>"*p

" Turn off search highlighting.
nnoremap <leader>ch :nohlsearch<CR>

" Open new lines without going into insert mode.
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Send current buffer the default printer with -p.
nnoremap <leader>p :hardcopy<CR>

" Easy navigate the split view.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys.
nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w><
nnoremap <c-right> <c-w>>

" Easy bracket creation.
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>i
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i
inoremap <leader>{ {}<esc>i

" Disable the arrow keys.
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

" }}}

 
" STATUS LINE ------------------------------------------------------------ {{{
 
" Set custom colors for the status line.
hi user1 ctermbg=white ctermfg=black guibg=white guifg=black
hi user2 ctermbg=black ctermfg=white guibg=black guifg=white

" Clear status line when vimrc is reloaded.
set statusline=

" Use user1 highlighting.
set statusline+=%1*

" Full path to the file.
set statusline+=\ %F%m%h%r

" Space character.
set statusline+=\ 

" Reset to default color.
set statusline+=%*

" Divide the left/right side.
set statusline+=%=

" Use user2 highlighting.
set statusline+=%2*

" Buffer.
set statusline+=\ B:\ %n

" Encoding.
set statusline+=\ E:\ %{strlen(&fen)?&fenc:'none'}

" File type.
set statusline+=\ T:\ %{&ff}

" Ascii.
set statusline+=\ A:\ %b

" Hexidecimal.
set statusline+=\ H:\ 0x%B

" Line.
set statusline+=\ L:\ %L

" Row.
set statusline+=\ R:\ %l

" Column.
set statusline+=\ C:\ %c

" Percentage.
set statusline+=\ P:\ %p%%

" Space character.
set statusline+=\ 

" Reset to default color.
set statusline+=%*

" Show the status on the second to last line.
set laststatus=2

" }}}

