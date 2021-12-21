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

" 改变分割窗口大小
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

noremap <silent> <ESC> :noh<return><ESC>
noremap \p :echo expand('%:p')<CR>

" bash
autocmd Filetype sh nnoremap <buffer> <silent> <leader>S :!shfmt -l -w %<CR><CR>


" which-key.vim
lua << EOF
local wk = require("which-key")

wk.register({
["<c-h>"] = { ":bp<CR>","上一个buf" },
["<c-l>"] = { ":bn<CR>","上一个buf" },
["<c-d>"] = { ":bd!<CR>","关闭当前buf" },
["Y"] = { '"+y',"复制到系统剪切板",mode="v"},
["U"] = { ":UndotreeToggle<CR>","打开Undotree" },
["<F4>"] = { ":set relativenumber!<CR>","行号显示" },
["<M-f>"] = { ":FZF<CR>", "打开FZF" },
["<leader>e"] = { "<Cmd>CocCommand explorer<CR>", "文件资源列表" },

g = {
	name = "go",
	h = {
		name = "git Hunk",
		j = { "<Plug>(GitGutterNextHunk)", "下一个Git变更块" },
		k = { "<Plug>(GitGutterPrevHunk)", "上一个Git变更块" },
		p = { "<Plug>(GitGutterPreviewHunk)", "预览这个Git变更块" },
		s = { ":VGit buffer_hunk_stage<CR>", "暂存这个Git变更块" },
		u = { ":VGit buffer_hunk_reset<CR>", "取消这个Git变更块" },
		b = { ":VGit buffer_blame_preview<CR>", "这个Git变更块的blame" },
		f = { ":VGit buffer_diff_preview<CR>", "查看buffer的更改" },
		h = { ":VGit buffer_history_preview<CR>", "查看buffer的更改历史" },
		r = { ":VGit buffer_reset<CR>", "重置整个buffer变更块" },
		d = { ":VGit project_diff_preview<CR>", "查看项目中的更改" },
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
	},

["<leader>t"] = {
	name = "打开列表",
	f = { ":Vista!!<CR>", "函数列表" },
	m = { ":Toc<CR>:vert res 40<CR>", "Markdown大纲列表" },
	t = { ":TodoTrouble<CR>", "代办事项列表" },
	},

["<leader>mt"] = { ":TableModeToggle<CR>", "表格模式" },
}, {mode = "n",prefix = "",buffer = nil,silent = true,noremap = true,nowait = false})

EOF
