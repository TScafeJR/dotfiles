set number
set autochdir
set wildmenu
set wildmode=longest,list,full
set noexpandtab
set tabstop=2
set shiftwidth=2
set nofixendofline
set list
set listchars=tab:>-,nbsp:-,space:·
set ignorecase

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> gv :vsplit<CR>gd
nnoremap <leader>u :e .<CR>
nnoremap <silent> <C-y> :ToggleTerm size=40 dir=. direction=vertical name=term<CR>

" vim-plug
call plug#begin('~/.vim/plugged')
" plugin section
Plug 'HerringtonDarkholme/yats.vim'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'preservim/nerdtree'
" end vim-plug
call plug#end()
