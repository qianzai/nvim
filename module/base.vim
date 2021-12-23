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
silent !mkdir -p $HOME/.config/nvimdata/tmp/backup
silent !mkdir -p $HOME/.config/nvimdata/tmp/undo
set backupdir=$HOME/.config/nvimdata/tmp/backup,.
set directory=$HOME/.config/nvimdata/tmp/backup,.
if has('persistent_undo')
	set undofile
		set undodir=$HOME/.config/nvimdata/tmp/undo,.
		endif

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 打开文件时光标返回上次离开的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 自动移除末尾空白
autocmd BufWritePre * :%s/\s\+$//e

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
