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

" Disable compatibilty with Vi.
set nocompatible

" Allow plugins to be used.
filetype plugin indent on

" Use syntax highlighting.
syntax on

" Show line numbers.
set number

" Highlight line with cursor.
set cursorline

" Highlight column with cursor.
set cursorcolumn

" Split window to open a pane in the bottom.
set splitbelow

" Split window to open a pane to the right.
set splitright

" Always leave a number of rows below cursor.
set scrolloff=10

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab stop to 4 spaces.
set tabstop=4

" Indent automatically.
set autoindent

" Use the appropriate number of spaces to insert a tap in insert mode.
set expandtab

" Show command in the last line of the screen.
set showcmd

" Show the line and column position of cursor.
set ruler

" Show matching words during a search.
set showmatch

" Highlight matching words while searching for text.
set hlsearch

" Set the number of lines to save in history.
set history=8000

" Back up files.
set backup

" Set a directory to save file backups with full path.
set backupdir=~/.vim/backup//

" Undo changes to files after saving them.
set undofile

" Set a directory to save undo data with full path.
set undodir=~/.vim/undo//

" Set number of times a file can be undone.
set undoreload=2000

" Undo changes to files after saving them.
set undofile

" Set location for temporary (swp) files.
set directory=/tmp

" Check to see if an file has changed by another text editor.
set autoread

" Switch to another buffer without saving.
set hidden

" Set text width
set textwidth=80

" Hide mouse when typing.
set mousehide

" Set colorscheme.
colorscheme molokai

" Greatly enhance command line tab completion.
set wildmenu

" Set wildmode.
set wildmode=list:longest

" Ignore files.
set wildignore=*.jpg,*.mp4,*.zip,*.iso,*.pdf,*.pyc,*.odt,*.png,*.gif,*.tar,*.gz,*.xz,*.bz2,*.tgz,*.db,*.exe,*.odt,*.xlsx,*.docx,*.tar,*.rar,*.img,*.odt,*.m4a,*.bmp,*.ogg,*.mp3,*.gzip,*.flv,*.deb,*.rpm

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Set leader key to '-' instead of the default backslash character '\'.
let mapleader = "-"

" Set local leader to backslash '\'.
let maplocalleader = "\\"

" Map <F3> key to open and close Nerdtree.
nnoremap <F3> :NERDTreeToggle ~/bin<cr>

" Have Nerdtree ignore certain files.
let NERDTreeIgnore=['\.jpg$', '\.mp4$', '\.zip$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.tar$', '\.gz$', '\.xz$', '\.bz2$', '\.tz$', '\.db$', '\.exe$', '\.odt$', '\xlsx$', '\docx$', '\.tar$', '\.rar$', '\.img$', '\.odt$', '\.m4a$', '\.bmp$', '\.ogg$', '\.mp3$', '\.gzip$', '\.flv$', '\.deb$', '\.rpm$']

" Turn off the highlighting after doing a search.
nnoremap <silent> <localleader>\ :nohlsearch<cr>

" Map 'ii' to the ESC key. 
inoremap ii <esc>

" Press the space bar to access the command line.
nnoremap <space> :

" Yank (copy) from cursor to the end of the line.
noremap Y y$

" Select all text in buffer.
noremap <leader>a ggVG

" Press middle mouse button to paste text from clip board.
nnoremap <mousemiddle> <esc>"*P

" Center cursor in middle of window during a search.
nnoremap n nzz
nnoremap N Nzz

" Insert a new line without going into insert mode.
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Send file to printer (from a Linux).
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" Press <leader>p to print the current file.
nnoremap <silent> <leader>p :%w !lp<cr>

" Move between split windows using CTRL+j, CTRL+k, CTRL+h, and CRTR+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split window with arrow keys.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Press -s to source the .vimrc file.
nnoremap <leader>s :w<CR>:source $MYVIMRC<cr>

" Press <leader>f to see a list of fonts available on the system.
nnoremap <leader>f :set guifont=*<cr>

" Set the language you want to check spelling for.
" Examples:
" :setlocal spell spelllang=en_us   (For US English)
" :setlocal spell spelllang=es      (For Spanish)
" Press z= to correct the word under the cursor.
" Move to the next mispelled word by pressing ]s or to the previous word [s
" Disable spell check :set nospell
" Press -S to check spelling in current buffer.
nnoremap <Leader>S <ESC>:setlocal spell spelllang=en_us<CR>

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

" Auto load a template for a new file if existing.
augroup filetype_html
    autocmd!
    autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
augroup END

" Set indentation of HTML files to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" Set options for Gvim.
if has("gui_running")

    " Set the background tone.
    set background=dark
    
    " Set the color scheme for GUI Vim.
    colorscheme gruvbox

    " Set font.
    set guifont=FiraCode\ Nerd\ Font\ Mono\ Regular\ 14

    " Make GUI Vim look like Vim in the terminal.
    
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

" }}}

" VIMSCRIPT FILE SETTINGS ------------------------------------------------ {{{

    " Clear status line when vimrc is reloaded.
    set statusline=

    " Show full path to the file.
    set statusline+=\ %F

    " Display modified flag for unsaved files.
    set statusline+=\ %M

    " Display the file type.
    set statusline+=\ %Y

    " Display if a file is read only.
    set statusline+=\ %R

    " Show the buffer number.
    set statusline+=\ buff:\ %n

    " Display the ascii code of the character under cursor.
    set statusline+=\ ascii:\ %b

    " Display the hex code of the character under cursor.
    set statusline+=\ hex:\ 0x%B

    " Split the left side from the right side.
    set statusline+=%=

    " Show the total number of lines in the file.
    set statusline+=\ lines:\ %L

    " Show the row the cursor is on.
    set statusline+=\ row:\ %l

    " Show the column the cursor is on.
    set statusline+=\ col:\ %c

    " Show the percentage of cursor is currently in the file. 
    set statusline+=\ percent:\ %p%%

    " Add a space character.
    set statusline+=\ 

    " Show the status on the second to last line.
    set laststatus=2

" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
