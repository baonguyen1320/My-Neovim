let mapleader="\<Space>"                 " Set leader key

" Basic mappings
" inoremap jj <ESC>
" inoremap jk <ESC>
" xnoremap jj <ESC>
" xnoremap jk <ESC>
" xnoremap jk <Esc>
" xnoremap kj <Esc>
" nnoremap j jzz
" nnoremap k kzz
" nnoremap # #zz
" nnoremap * *zz
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap G Gzz

" Better nav for omnicomplete when go up and down in menu popup
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: Completion
inoremap <expr><TAB> pumvisible() ? "\<C-y>" : "\<TAB>"

" Better window navigation ctrl+h,j,k,l instead of ctrl+w+h,j,k,l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Git mapping
noremap :gn :GitGutterNextHunk<CR>
noremap :gp :GitGutterPrevHunk<CR>

nnoremap <leader>r :GitGutterUndoHunk<CR> 
nnoremap <leader>v :GitGutterLineHighlightsToggle<CR> 

" Redo
nnoremap U <C-R>

" Display character in buffer
nnoremap <leader>t :BufferLinePick<CR>

" Close current buffer
nnoremap <C-w> :bw<CR>

" quit nvim
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q!<CR>

" telescope search mapping
nnoremap <leader>o :Telescope find_files<CR>
nnoremap <leader>f :Telescope live_grep<CR>
nnoremap <leader>a :Telescope grep_string<CR>

nnoremap <C-S-o> :Telescope find_files<CR>
nnoremap <C-S-f> :Telescope live_grep<CR>
nnoremap <C-S-a> :Telescope grep_string<CR>

" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da

" terminal in vim, stop
" nmap <silent><leader>z <C-z> 

" Yank to Vim + OS clipboard by installing xclip https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/xclip_0.13-1_amd64.deb.html
" Copy in Visual mode
map <C-c> y<CR>
" Paste in normal mode
map <C-v> P<CR>

"clone paragraph inside a block `}` and aste it right under empty row
nnoremap cp yap}p

" format code inside a block
noremap <C-S-l> =ip

" Jump to something
" search and highlight 
nnoremap <C-f> /

" Create NEW buffer
" nnoremap <silent><leader>n :e! ~/buff<CR>
" close buffer. Consider to active this due to it will close buffer 
" nnoremap <silent><leader>q :close<cr>
" EXIT vim
nnoremap <silent><leader>q :q!<cr>
" Open list of Files History
nnoremap <silent><leader>i :History<CR>
" Open list of Commands History
nnoremap <silent><leader>y :History:<CR>
" Open search by 'key word etc: class name, #id, function name...' entire current folder
nnoremap <silent><leader>g :Rg<CR>
" nnoremap <silent><leader>a 1Ag<CR>
" nnoremap <silent>ng :Ag<CR>
" map % to jum faster better open and close of {, [, (
nnoremap <silent><leader>j %
vnoremap <silent><leader>j %

" Fast save
nnoremap <silent><leader>s :wa!<cr>
" inoremap <silent><leader>s <ESC>:w!<cr>
" split current window vertical on the right 'set splitright'  
nnoremap <silent><Leader>d :vsplit<CR>
" split current window horizontal on bottom 'set splitbelow'
nnoremap <silent><Leader>D :split<CR>

" quick jump to first non-blank of row
" nnoremap <silent><leader>h ^
nnoremap <S-h> ^

" quick jump to last non-blank of row
" nnoremap <silent><leader>l $
nnoremap <S-l> $

"Imap ESC to jj
:imap jj <Esc>
:imap kk <Esc>

"Map nohighlight
nnoremap <F4> :noh<CR>

"Map colon to semicolon
nnoremap ; :

" In Visual Mode Indent shifting > and <
vnoremap < <gv
vnoremap > >gv

  "In Visual Mode move line up, down when in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" In normal mode map to go faster up, down
nnoremap J 10j
nnoremap K 10k

" ======================================================
" ->>>>>>>>>>>>>>>>>>Manual Custom <<<<<<<<<<<<<<<<<<<<-
nnoremap <C-S-J> J
" ======================================================
nnoremap <C-S-N> :FloatermNew<CR>
nnoremap :gs :DiffviewOpen<CR>

