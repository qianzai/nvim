" ============================================================================================
" === 快捷键
" ============================================================================================
nmap Q     :q<CR>
nmap S    :w<CR>
nmap W    :wq<CR>

noremap K 5k
noremap J 5j
noremap H ^
noremap L $

noremap n nzz
noremap N Nzz

" Copy to system clipboard
vnoremap Y "+y

" 行号显示
map <silent><F4> :set relativenumber!<CR>

" 改变分割窗口大小
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

"切换文件
nmap <c-h> :bp<CR>
nmap <c-l> :bn<CR>

" 关闭当前buffers
nmap <M-m> :bd!<CR>

noremap <ESC> :noh<return><ESC><c-w>o
noremap \p :echo expand('%:p')<CR>
