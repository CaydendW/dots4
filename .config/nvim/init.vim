" Theming
set termguicolors
set background=dark
silent! syntax enable
silent! colo ThemerVim

" Bindings
nnoremap r <C-r>
vnoremap r <C-r>
map <C-_> <plug>NERDCommenterToggle
map cl :noh<Cr>

" General config
set guicursor=
set mouse=a
set hlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set laststatus=1
set confirm
set visualbell
set cmdheight=2
set number
set updatetime=0
set shortmess+=c
set shiftwidth=2
set softtabstop=2
set expandtab
set cursorline
highlight CursorLineNR cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#e5c07b
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'p00f/nvim-ts-rainbow'
call plug#end()

" Vim terminal
let g:terminal_ansi_colors = [
  \ "#1e222a", "#e06c75", "#98c379", "#e5c07b",
  \ "#61afef", "#c678dd", "#56b6c2", "#abb2bf",
  \ "#1e222a", "#e06c75", "#98c379", "#e5c07b",
  \ "#61afef", "#c678dd", "#56b6c2", "#abb2bf"
  \]

" Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'M'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" Nerdcomment
let g:NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 0

" Autostart
autocmd VimEnter * wincmd p
" autocmd CursorHold * silent call CocActionAsync('highlight')

" coc color
hi Pmenu guifg=#abb2bf guibg=#393e48
hi PmenuSel guibg=#98c379 guifg=#1e222a
hi CocErrorSign guifg=#e06c75
hi! CocInfoSign guibg=#61afef
hi! CocWarningSign guifg=#e5c07b

" Lua things
lua <<EOF

require'nvim-treesitter.configs'.setup {
  --  Treesitter / Rainbow brackets
  ensure_installed = {"c", "python", "bash", "cpp", "commonlisp", "php"},
  
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- Rainbow
  rainbow = {
    enable = true,
    extended_mode = true,
    colors = {"#61afef", "#56b6c2", "#98c379"}
  },

}

EOF
