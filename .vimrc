syntax enable
syntax on

filetype plugin on
filetype indent off
filetype plugin indent on

set autoindent
set smartindent
set cindent

set foldmethod=syntax

set smarttab

set number
set relativenumber

set showcmd
set incsearch
set autowrite

set nocompatible
set hidden

set wrap

set laststatus=2

set encoding=utf-8

set wildmenu
set wildmode=longest,list,full

let g:airline_theme = 'catppucin_mocha'

set omnifunc=ccomplete#Complete
set omnifunc=syntaxcomplete#Complete

if filereadable(expand("~/.vimrc.plug"))
        source ~/.vimrc.plug
endif

autocmd VimEnter * if filereadable(expand("~/.vimrc.path")) |   source ~/.vimrc.path | endif

set clipboard=unnamedplus
colorscheme darcula

if has("patch-8.1.0360")
        set diffopt+=internal,algorithm:patience
endif

" --- FZF settings with bat preview ---
let $BAT_THEME='Dracula'
let $FZF_DEFAULT_OPTS='--color=16 --reverse --border'
let g:fzf_preview_window = ['right:60%:wrap']

if executable('bat')
        let g:fzf_preview_command = 'bat -A --style=numbers --color=always --theme=Dracula --line-range :500 {}'
else
        let g:fzf_preview_command = 'cat {}'
endif

" --- NERDTree Configure ---
autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * NERDTreeFind | wincmd p
autocmd BufEnter * if (winnr("$") == 1 && &filetype == "nerdtree") | quit | endif
let NERDTreeDirArrows = 1
let NERDTreeMapKeys = 1
let g:nerdtree_vis_confirm_open = 0
let g:nerdtree_vis_confirm_delete = 0
let g:nerdtree_vis_confirm_copy = 0
let g:nerdtree_vis_confirm_move = 0
let g:nerdtree_vis_confirm_append_arglist = 0
let g:nerdtree_vis_confirm_set_arglist = 0

xnoremap <leader>n :call NERDTreeVisualSelection()<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n>m :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-n>t :NERDTreeToggle<CR>
nnoremap <C-n>f :NERDTreeFind<CR>

" --- Floaterm Configure ---
let g:floaterm_title         = 'floaterm: $1/$2'
" let g:floaterm_wintype       = 'float'
let g:floaterm_wintype       = 'split'
let g:floaterm_position      = 'center'
let g:floaterm_height                    = 0.5
let g:floaterm_width                             = 0.4
let g:floaterm_autoclose                 = 1
let g:floaterm_autoinser                 = 1

let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'
let g:floaterm_keymap_prev = '<Leader>h'
let g:floaterm_keymap_next = '<Leader>l'
hi link FloatermBorder Normal
