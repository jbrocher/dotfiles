" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pyright']
Plug 'dikiaap/minimalist'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

"Color theme
Plug 'arcticicestudio/nord-vim'

"Nerdtree
Plug 'scrooloose/nerdtree' 

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
" == VIMPLUG END ================================
" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================

" Colorscheme

set termguicolors
colorscheme nord
"FZF
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
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

" General settings
 
" Error bell settings

set noeb vb t_vb=

" Spacing
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set expandtab 


" Miscalleneaous
:set hidden
:set nu
:set relativenumber

" Search
:set incsearch
:set nohlsearch 
:set smartcase
:set ignorecase

" Exit terminal mode with ESC
:tnoremap <Esc> <C-\><C-n>

"==COC MAPPING================================

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

"==AZERTY REMAPS================================

:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
" noremap followed by iunmap, map  for everything (including operator pending) except insert

:nmap ) ]
:vmap ) ]
:omap ) ]

:nmap ( [
:vmap ( [
:omap ( [

:nnoremap = }
:vnoremap = }
:onoremap = } 

:nnoremap ù %
:vnoremap ù %
:onoremap ù %

:nnoremap è `
:onoremap è `
:vnoremap è `

:nnoremap é ~
:onoremap é ~
:vnoremap é ~

:nnoremap ' {
:onoremap ' {
:vnoremap ' {

" Avoiding esckey

inoremap jj <Esc>

" AZERY 
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
" noremap followed by iunmap, map  for everything (including operator pending) except insert

:nmap ) ]
:vmap ) ]
:omap ) ]

:nmap ( [
:vmap ( [
:omap ( [

:nnoremap = }
:vnoremap = }
:onoremap = } 

:nnoremap ù %
:vnoremap ù %
:onoremap ù %

:nnoremap è `
:onoremap è `
:vnoremap è `

:nnoremap é ~
:onoremap é ~
:vnoremap é ~

:nnoremap ' {
:onoremap ' {
:vnoremap ' {

" Avoiding esckey

inoremap jj <Esc>
