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

autocmd BufEnter * lcd %:p:h

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> gv :vsplit<CR>gd
nnoremap <silent> gs :split<CR>gd
nnoremap <leader>u :e .<CR>
nnoremap <silent> <C-y> :ToggleTerm size=40 dir=. direction=vertical name=term<CR>
