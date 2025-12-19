" ~/.vimrc — basic, no plugins (every line commented)

" Disable Vi-compatibility mode (use full Vim defaults)
set nocompatible
" Enable filetype detection + load built-in ftplugins + indentation rules
filetype plugin indent on
" Enable syntax highlighting
syntax on

" --- UI / display ---

" Show absolute line numbers
set number
" Show relative line numbers (good for jumping with 5j/10k etc.)
set relativenumber
" Show cursor position in the status area
"set ruler
" Show partial command in the last line (e.g. while typing a mapping)
set showcmd
" Show current mode (e.g. -- INSERT --)
"set showmode
" Highlight the current line
set cursorline
" Do not wrap long lines visually
" set nowrap
" Always show a statusline (2 = always)
"set laststatus=2
" Always show the sign column (prevents text shifting)
"set signcolumn=yes
" Keep at least 5 lines visible above/below the cursor
set scrolloff=5
" Keep at least 5 columns visible left/right when scrolling horizontally
set sidescrolloff=5

" --- Indentation / tabs ---

" A tab character displays as 4 spaces
set tabstop=4
" Indent operations (>>, <<, autoindent) use 4 spaces
set shiftwidth=4
" Insert spaces instead of real tab characters
" set expandtab
" Smarter auto-indenting for some languages
set smartindent
" Copy indentation from the current line when starting a new line
set autoindent

" --- Search ---

" Show matches while typing the search pattern
set incsearch
" Highlight all matches of the last search
set hlsearch
" Case-insensitive search by default
set ignorecase
" But if the pattern contains uppercase, make it case-sensitive
set smartcase

" --- Editing behavior ---

" Allow backspace over indent, line breaks, and insert start
set backspace=indent,eol,start
" Allow switching buffers without saving (keeps changes in memory)
set hidden
" Enhanced command-line completion menu
set wildmenu
" Completion behavior: first longest match, then full list
set wildmode=longest:full,full
" Use system clipboard (requires +clipboard / xclip/wl-clipboard on Linux)
set clipboard=unnamedplus
" Enable mouse support in all modes
set mouse=a

" --- Files / undo / swap / backups ---

" Persistent undo across sessions
set undofile
" Where to store undo files (// makes Vim create a full path structure)
set undodir=~/.vim/undo//
" Enable backup files
"set backup
" Where to store backup files (// makes Vim create a full path structure)
set backupdir=~/.vim/backup//
" Enable swap files (crash recovery)
set swapfile
" Where to store swap files (// makes Vim create a full path structure)
set directory=~/.vim/swap//
" Keep a backup while writing a file (safer writes)
set writebackup

" --- Responsiveness / timings ---

" Time in ms before CursorHold triggers (also affects some UI refresh)
set updatetime=300
" Mapping timeout in ms (how long Vim waits for a mapping to complete)
set timeoutlen=500
" Keycode timeout in ms (terminal key sequences)
set ttimeoutlen=10

" --- Splits ---

" New horizontal splits open below the current window
set splitbelow
" New vertical splits open to the right of the current window
set splitright

" --- Ensure directories exist (so undo/backup/swap doesn't fail) ---

" If ~/.vim/undo does not exist...
if !isdirectory(expand("~/.vim/undo"))
  " ...create it (p = create parents as needed)
  call mkdir(expand("~/.vim/undo"), "p")
" End of the undo dir check
endif
" If ~/.vim/backup does not exist...
if !isdirectory(expand("~/.vim/backup"))
  " ...create it
  call mkdir(expand("~/.vim/backup"), "p")
" End of the backup dir check
endif
" If ~/.vim/swap does not exist...
if !isdirectory(expand("~/.vim/swap"))
  " ...create it
  call mkdir(expand("~/.vim/swap"), "p")
" End of the swap dir check
endif

" --- Key mappings (safe defaults) ---

" Define <Leader> key as Space
"let mapleader=" "

" Normal mode: <Leader>w writes (saves) the current file
"nnoremap <leader>w :write<CR>
" Normal mode: <Leader>q quits the current window
"nnoremap <leader>q :quit<CR>
" Normal mode: <Leader>h clears search highlight
"nnoremap <leader>h :nohlsearch<CR>

" Visual mode: keep selection when shifting left
"vnoremap < <gv
" Visual mode: keep selection when shifting right
"vnoremap > >gv

" Normal mode: Ctrl+h moves to the split on the left
"nnoremap <C-h> <C-w>h
" Normal mode: Ctrl+j moves to the split below
"nnoremap <C-j> <C-w>j
" Normal mode: Ctrl+k moves to the split above
"nnoremap <C-k> <C-w>k
" Normal mode: Ctrl+l moves to the split on the right
"nnoremap <C-l> <C-w>l

