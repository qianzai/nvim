let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'



" ============================================================================================
" === neovim 配置
" ============================================================================================
let mapleader = "\<space>"

set nu			"设定行号
set rnu
" set clipboard=unnamedplus	"剪切板同步系统
set clipboard=unnamed	"剪切板同步系统
set tabstop=4		"设置制表符4
set shiftwidth=4    "设定tab的宽
set softtabstop=4"
set ignorecase		"搜索忽略大小写"
set smartcase		"智能搜索"
set scrolloff=5		"顶部底部预留5行"
set encoding=utf-8
set updatetime=100
set cursorline	"设置高亮行

set hidden


" 退出文件后，依然保存修改记录
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
		set undodir=$HOME/.config/nvim/tmp/undo,.
		endif

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 打开文件时光标返回上次离开的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 自动移除末尾空白
autocmd BufWritePre * :%s/\s\+$//e

" ============================================================================================
" === 快捷键
" ============================================================================================
nmap Q     :q<CR>
nmap S    :w<CR>
nmap W    :wq<CR>

noremap K 5k
noremap J 5j
noremap H 5h
noremap L 5l

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

"切换窗口
nmap <M-k> <c-w>k
nmap <M-j> <c-w>j
nmap <M-h> <c-w>h
nmap <M-l> <c-w>l

noremap <ESC> :noh<return><ESC>
noremap \p :echo expand('%:p')<CR>

noremap <space>R :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'markdown'
		exec "MarkdownPreview"
		:set conceallevel=1
		" exec "IndentLinesToggle"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'java'
		:!java %
	endif
endfunc
