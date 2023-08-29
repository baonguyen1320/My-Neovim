call plug#begin('~/.config/nvim/plugged')
  "	Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'EdenEast/nightfox.nvim' " Vim-Plug 

  " Vim Commentary
  Plug 'tpope/vim-commentary'

  " Insert or delete brackets, parens, quotes in pair.
  Plug 'jiangmiao/auto-pairs'

  " sidebar nerdtree
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  " Icon for Nerdtree
  Plug 'ryanoasis/vim-devicons'

  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' Icons without colours
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

  " easy move with jump. Consider NOT use this 
  Plug 'easymotion/vim-easymotion'

  " Indent blank line
  Plug 'lukas-reineke/indent-blankline.nvim' 

  " Make your Vim/Neovim as smart as VSCode
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " search files in source code
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

  " a simple, unified, single tabpage interface that lets you easily review all changed files for any git rev.
  Plug 'sindrets/diffview.nvim'

  " view mark file add +, change ~, delete ~ and deal with that stage or undo
  Plug 'airblade/vim-gitgutter'

  " show information of git on statusline and can do git in nvim with G: 
  Plug 'tpope/vim-fugitive'
  
  " add blockquotes, tags... surround a selected area
  Plug 'tpope/vim-surround'

  " highlight autocomplete rails 
  Plug 'tpope/vim-rails'

  " highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
  Plug 'sheerun/vim-polyglot'

  Plug 'pechorin/any-jump.vim'
  " https://github.com/tveskag/nvim-blame-line
  Plug 'tveskag/nvim-blame-line'

  " Auto add end of def method
  Plug 'tpope/vim-endwise' 

	" status bar theme
	Plug 'vim-airline/vim-airline'
  
  Plug 'liuchengxu/vim-which-key'
  " On-demand lazy load
  Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

  " To register the descriptions when using the on-demand load feature,
  " use the autocmd hook to call which_key#register(), e.g., register for the Space key:
  " autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

	" Terminal in Terminal
	Plug 'voldikss/vim-floaterm'
"=============================================================================
call plug#end()

