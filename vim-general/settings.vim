syntax enable                     " Enables syntax highlighting

set nocompatible
set number
set number relativenumber

set hidden                        " Required to keep multiple buffers open multiple buffers
set ruler              			      " Show the cursor position all the time
set nowrap                        " Display long lines as just one line
set autoread

set laststatus=0                  " Alway dislay status line
set softtabstop=2
set backspace=2                   " Backspace deletes like most programs in insert mode
set tabstop=2                     " Inseter 2 spaces for 1 tab
set showtabline=2                 " Always show tabs
set shiftwidth=2                  " Change the number of space characters inserted for indentation
set pumheight=10                  " Makes popup menu smaller

set t_Co=256                      " Support 256 colors
set conceallevel=0                " So that I can see `` in markdown files

set updatetime=300                " Faster completion default 500ms
set timeoutlen=500                " By default timeoutlen is 1000 ms, popup poppup

set expandtab                     " Converts tabs to spaces
set smartindent                   " Makes indenting smart
set autoindent                    " take indent for new line from previous line
" set linebreak                     " wrap long lines at a character in 'breakat' rather
" set smarttab                    " Makes tabbing smarter will realize you have 2 vs 4
" set cmdheight=1                 " More space for displaying messages can be 2
" set textwidth=80
" set backspace=indent,eol,start  " Fix backspace indent
 
set splitbelow                    " Horizontal splits will automatically be below
set splitright                    " Vertical splits will automatically be to the right

set formatoptions-=cro            " Stop newline continution of comments
set lazyredraw				            " Avoids updating the screen before commands are completed
set mouse=a  				              " Enable your mouse
" set mousemodel=popup_setpos
set clipboard+=unnamedplus        " Copy paste between vim and everything else

set cursorline                    " Enable highlighting of the current line
" set autochdir                     " Your working directory alway be the same as your working directory
" set noshowmode                  " We don't need to see things like -- INSERT -- anymore

"" Use modeline overrides
set modeline
set modelines=10
" set foldmethod=indent


" Encoding
set encoding=utf-8
set fileencoding=utf-8            " The encoding written to file
set fileencodings=utf-8
set fileformats=unix

" Searching
set ignorecase                    " ignore Upper or Lowercase
set smartcase                     " depend of pattern lower or Upper

set nobackup                      " This is recommended by coc
set nowritebackup                 " This is recommended by coc

" set notitle
" set noerrorbells
" set noswapfile
set colorcolumn=120 
hi ColorColumn ctermbg=0 guibg=black

" highlight clear SignColumn
" hi Pmenu guibg=#3d3d3d gui=NONE
" hi PmenuSel guibg=#232323 gui=NONE
" hi PmenuSbar guibg=#bcbcbc
" hi PmenuThumb guibg=#585858

" Blink cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait20-blinkoff100-blinkon50-Cursor,sm:block-blinkwait75-blinkoff50-blinkon75

" set font
set guifont=LiberationMono_Nerd_Font:h12
