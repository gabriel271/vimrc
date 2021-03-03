""""""""""""""""""""""
"""""""""Plugins""""""
""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gabriel271/vim-monokai'
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'
Plug 'dracula/vim', { 'name': 'dracula' }
call plug#end()

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

set number
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set nowrap
set title
set termguicolors
set splitright
color monokai
set hidden

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
imap <C-S> <ESC>:w<CR>
map q <ESC>:q<CR>
map <C-c> "+y
imap <C-v> <esc>"+pi
