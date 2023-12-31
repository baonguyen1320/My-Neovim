source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/vim-general/settings.vim
source ~/.config/nvim/vim-mapping/keys.vim


"----------------------------------------------
"" Layer: Themes
"----------------------------------------------
set termguicolors
" set background=dark
colorscheme nightfox

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

let g:ale_enabled = 0 " Disable ALE highligting

" Index core project
" brew install ctags 
" ctags -R.

" Autosave after leave buffer
au BufLeave * silent! wall
 
lua << EOF
require("bufferline").setup{}
EOF


" <<<<<<<< TELESCOPE CONFIGURATION >>>>>>>>

lua << EOF
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules",
      "Gemfile.lock",
      "docker-compose.yml",
      "vendor"
    }
  },
  mappings = {
    i = {
      -- map actions.which_key to <C-h> (default: <C-/>)
      -- actions.which_key shows the mappings for your picker,
      -- e.g. git_{create, delete, ...}_branch for the git_branches picker
      ["<C-h>"] = "which_key"
    }
  }
}
EOF

" <<<<<<<<<<<<< END TELESCOPE CONFIGURATION >>>>>>>>>


" <<<<<<<<<<<<<<< NERDTREE CONFIGURATION >>>>>>>>>>>>>

" Auto open NERDTREE 
autocmd VimEnter * NERDTree | wincmd p

" NERDTREE
nnoremap <silent><F2> :NERDTreeToggle<CR>
nnoremap <silent><F3> :NERDTreeFind<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

lua << EOF
return {
    -- Which-key Extension
    "folke/which-key.nvim",
    lazy = true,
}
EOF

" <<<<<<<<<<<<<<<< END NERDTREE CONFIGURATION >>>>>>>>>>>>>>>>>



" <<<<<<<<<<<<<< RESTORE LAST SESSION WHEN GO NVIM >>>>>>>>>>>>

" let g:session_directory = "~/.vim/sessions/" . getcwd()
let g:session_directory = expand("~/.vim/sessions/") . fnamemodify(getcwd(), ":t")

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_to = 'default'
let g:session_verbose_messages = 0

" <<<<<<<<<<<<< END CONFIGURATION RESTORE LAST SESSION >>>>>>>>>
