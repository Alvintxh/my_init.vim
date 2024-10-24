
"████╗ ████║╚██╗ ██╔╝    ████╗  ██║██║   ██║██║████╗ ████║
"██╔████╔██║ ╚████╔╝     ██╔██╗ ██║██║   ██║██║██╔████╔██║
"██║╚██╔╝██║  ╚██╔╝      ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚═╝ ██║   ██║       ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚═╝   ╚═╝       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
                                                         
" Author: @Alvintxh
"=========================================================
call plug#begin('D:/Neovim/plugged')

Plug 'theniceboy/vim-deus' 
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on
color deus
set relativenumber
set nu
syntax enable
set noswapfile

""===
""===vimtex
""===
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_general_viewer = 'sumatrapdf'
let g:vimtex_view_sumatrapdf_sync = 1
let g:vimtex_view_sumatrapdf_keep_focus = 1

""===
""=== coc.nvim
""===
let g:coc_global_extensions = [
			\'coc-json', 
			\'coc-vimlsp']

set updatetime=100

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-z> coc#refresh()


nnoremap <silent> K:call ShowDocumentation()<CR>

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 
nmap <leader>a  <Plug>(coc-codeaction-selected)




""===
""===FZF
""===
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }
