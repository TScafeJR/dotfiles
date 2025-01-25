set number relativenumber
set autochdir
set wildmenu
set wildmode=longest,list,full
set noexpandtab
set tabstop=2
set shiftwidth=2
set nofixendofline
set list
set listchars=tab:>-,nbsp:-,space:·
set clipboard=unnamedplus

autocmd BufEnter * lcd %:p:h

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> gv :vsplit<CR>gd
nnoremap <silent> gs :split<CR>gd
nnoremap <leader>u :e .<CR>

if $TERM ==# "xterm"
  set background=light
endif
