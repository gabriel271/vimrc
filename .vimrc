""""""""""""""""""""""
"""""""""Plugins""""""
""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'gabriel271/vim-monokai'
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'

call plug#end()


""""""""""""""""""""""
"""""""emmet-vim""""""
""""""""""""""""""""""

let g:user_emmet_leader_key=','

""""""""""""""""""""""
"""""""Nerd-TREE""""""
""""""""""""""""""""""

autocmd VimEnter * NERDTree

map <C-b> :NERDTreeToggle <cr>

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


""""""""""""""""""""""
"""""""vim-devicons"""
""""""""""""""""""""""

"NONE

""""""""""""""""""""""
""""""""Coc-nvim""""""
""""""""""""""""""""""

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
	execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
	call CocActionAsync('doHover')
  else
	execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"""""""""""""""""""""""""""""""""
""""""""Processos escondidos"""""
"""""""""""""""""""""""""""""""""

set nobackup
set nowritebackup
set noswapfile

""""""""""""""""""""""
""""""""Interface"""""
""""""""""""""""""""""

set number
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set nowrap
set title
set termguicolors
color monokai

"""""""""""""""""""""""
"""""""Usabilidade"""""
"""""""""""""""""""""""

"set mouse=a
set confirm
set wildmenu

"""""""""""""""""""
"""""Atalhos"""""""
"""""""""""""""""""

map <C-DOWN> ddp
map <C-UP> ddkP
map <C-S> <ESC>:w<CR>
imap <C-S> <ESC>:w<CR>
map q <ESC>:q<CR>
map <C-i> :q!<ESC>
map <C-c> "+y
imap <C-v> <esc>"+p
