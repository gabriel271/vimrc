""""""""""""""""""""""
"""""""""Plugins""""""
""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'crusoexia/vim-monokai'

call plug#end()

""""""""""""""""""""""
""""""Monokai"""""""""
""""""""""""""""""""""

"let g:monokai_term_italic = 1
"let g:monokai_gui_italic = 1


""""""""""""""""""""""
"""""Airline""""""""""
""""""""""""""""""""""

"let g:airline_extensions = []

"let g:airline#extensions#ycm#error_symbol = 'E:'
"let g:airline#extensions#ycm#warning_symbol = 'W:'

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

""""""""""""""""""""""
""""""Dracula"""""""""
""""""""""""""""""""""

let g:dracula_italic = 0

""""""""""""""""""""""
"""""""emmet-vim""""""
""""""""""""""""""""""

let g:user_emmet_leader_key=','

""""""""""""""""""""""
""""""""Coc-nvim""""""
""""""""""""""""""""""

" Auto complete
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Goto navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Auto import
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Show documentation
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

" Coc-explorer
map <C-b> :CocCommand explorer<CR>
autocmd VimEnter * execute "normal \<C-b>" 
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"""""""""""""""""""""""""""""""""
""""""""Background process"""""""
"""""""""""""""""""""""""""""""""

set noswapfile
set nobackup
set nowritebackup

""""""""""""""""""""""
""""""""Interface"""""
""""""""""""""""""""""

set encoding=utf-8
set number
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set nowrap
set title
set splitright
color monokai
" Monokai
hi CocWarningSign guibg=#2D2E27
hi CocHintSign guibg=#2D2E27
hi CocInfoSign guibg=#2D2E27
hi Error guibg=#2D2E27
set hidden
set cursorline
set termguicolors
set synmaxcol=400

"""""""""""""""""""""""
"""""""Usabilidade"""""
"""""""""""""""""""""""

set mouse=a
set confirm
set wildmenu

"""""""""""""""""""
"""""Key bind""""""
"""""""""""""""""""

map <C-DOWN> ddp
map <C-UP> ddkP
map <C-S> <ESC>:w<CR>
map q <ESC>:q<CR>
map <C-c> "+y
imap <C-S> <ESC>:w<CR>
imap <C-v> <esc>"+pi
tmap <C-V> <C-w>N<ESC>:vert term<CR>
map <C-a> :term<CR><C-W><S-R><C-W><S-N>:resize 10<CR>i
