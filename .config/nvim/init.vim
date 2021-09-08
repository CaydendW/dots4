" Only NVim
if &compatible
  set nocompatible               " Be iMproved
endif

" Stuff to make ST work
" set ttymouse=sgr
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Keybinds
map <C-p> :Files<CR>
map <C-_> <plug>NERDCommenterToggle
map c y
map cl :noh<Enter>
nnoremap ; :
vnoremap ; :
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>

set virtualedit=
setlocal display+=lastline
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>

" Show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Theming
set termguicolors
set background=dark
silent! syntax enable
silent! colo ThemerVim

" General config stuff
filetype plugin on
set guicursor=
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=1
set confirm
set visualbell
set t_vb=
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set mouse=a
set encoding=utf-8 
set updatetime=0
set shortmess+=c

" Tabs
set shiftwidth=2
set softtabstop=2
set expandtab

" Plug stuff
call plug#begin('~/.vim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
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

" FZF
let g:fzf_colors = { 
  \ 'fg':      ['fg', 'Normal'],                                                           
  \ 'bg':      ['bg', 'Normal'],                                                           
  \ 'hl':      ['fg', 'Comment'],                                                          
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],                             
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],                                       
  \ 'hl+':     ['fg', 'Statement'],                                                        
  \ 'info':    ['fg', 'PreProc'],                                                          
  \ 'border':  ['fg', 'Ignore'],                                                           
  \ 'prompt':  ['fg', 'Conditional'],                                                      
  \ 'pointer': ['fg', 'Exception'],                                                        
  \ 'marker':  ['fg', 'Keyword'],                                                          
  \ 'spinner': ['fg', 'Label'],                                                            
  \ 'header':  ['fg', 'Comment'] } 

" Multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Autostart
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd VimEnter * wincmd p

" cursorline
highlight CursorLineNR cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#e5c07b
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" coc color
hi Pmenu guifg=#abb2bf guibg=#393e48
hi PmenuSel guibg=#98c379 guifg=#1e222a
hi CocErrorSign guifg=#e06c75
hi! CocInfoSign guibg=#61afef
hi! CocWarningSign guifg=#e5c07b

" Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'M'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" Nerdcomment
let g:NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 0

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
  }
}

EOF
