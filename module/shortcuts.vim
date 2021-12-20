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

noremap <silent> <ESC> :noh<return><ESC>
noremap \p :echo expand('%:p')<CR>

" bash
autocmd Filetype sh nnoremap <buffer> <silent> <leader>S :!shfmt -l -w %<CR><CR>


" which-key.vim
lua << EOF
local wk = require("which-key")

wk.register({
["U"] = { ":UndotreeToggle<CR>","打开Undotree" },
["<M-f>"] = { ":FZF<CR>", "打开FZF" },

g = {
	name = "go",
	h = {
		name = "git Hunk",
		j = { "<Plug>(GitGutterNextHunk)", "下一个Git变更块" },
		k = { "<Plug>(GitGutterPrevHunk)", "上一个Git变更块" },
		s = { "<Plug>(GitGutterStageHunk)", "暂存这个Git变更块" },
		u = { "<Plug>(GitGutterUndoHunk)", "取消这个Git变更块" },
		p = { "<Plug>(GitGutterPreviewHunk)", "预览这个Git变更块" },
		},
	d = {
		name = "diagnostic",
		j = { "<Plug>(coc-diagnostic-prev)", "下一个报错" },
		k = { "<Plug>(coc-diagnostic-next)", "上一个报错" },
		},
	},

m = {
	name = "marks",
	j = { "<Plug>(Marks-next)", "下一个marks标记位置" },
	k = { "<Plug>(Marks-prev)", "上一个marks标记位置" },
	p = { "<Plug>(Marks-preview)", "预览marks标记位置" },
	["<space>"] = { "<Plug>(Marks-toggle)", "切换marks标记状态" },
	d = {
		name = "删除marks",
		l = { "<Plug>(Marks-deleteline)", "删除当前行的marks标记位置" },
		b = { "<Plug>(Marks-deletebuf)", "删除当前buf的marks标记位置" },
		}
	},


["<leader>rr"] = { ":RnvimrToggle<CR><C-\\><C-n>:RnvimrResize 0<CR>", "打开rnvimr" },
["<leader>rn"] = { "<Plug>(coc-rename)", "变量重命名" },

["<leader>f"] = {
	name = "操作文件",
	f = { ":DashboardFindFile<CR>", " 查找文件" },
	n = { ":DashboardNewFile<CR>", " 新建文件" },
	h = { ":DashboardFindHistory<CR>", " 历史文件" },
	b = { ":DashboardJumpMark<CR>", " 跳转标签" },
	w = { ":DashboardFindWord<CR>", " 查找内容" },
	w = { 'y:Rg <c-r>"<cr>', " 查找内容",mode="v" },
	z = { ':F  %<left><left>', "搜索文本",silent=false },
	},

["<leader>c"] = {
	name = "切换",
	t = { ":DashboardChangeColorscheme<CR>", " 切换主题" },
	h = { ":HexokinaseToggle<CR>", "颜色显示" },
	e = { "<Cmd>CocCommand explorer<CR>", "文件资源列表" },
	},

["<leader>t"] = {
	name = "打开列表",
	f = { ":Vista!!<CR>", "函数列表" },
	m = { ":Toc<CR>:vert res 40<CR>", "Markdown大纲列表" },
	},

["<leader>mt"] = { ":TableModeToggle<CR>", "表格模式" },
}, {mode = "n",prefix = "",buffer = nil,silent = true,noremap = true,nowait = false})

EOF
