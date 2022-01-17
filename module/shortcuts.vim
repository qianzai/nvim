" ============================================================================================
" === 快捷键
" ============================================================================================
noremap K 5k
noremap J 5j
noremap H ^
noremap L $

" 改变分割窗口大小
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

noremap <silent> <ESC> :noh<return><ESC>

" bash
autocmd Filetype sh nnoremap <buffer> <silent> <leader>S :!shfmt -l -w %<CR><CR>


" which-key.vim
lua << EOF
local wk = require("which-key")

wk.register({
["Q"] = { ":q<CR>","退出" },
["S"] = { ":w<CR>","保存" },
["W"] = { ":wq<CR>","保存退出" },

["n"] = { "nzz","下一个搜索位置" },
["N"] = { "Nzz","上一个搜索位置" },

["\\p"] = { ":echo expand('%:p')<CR>","打印当前buffer路径" },
["\\c"] = { ":Calendar<CR>","打开日历" },

["<c-h>"] = { ":bp<CR>","上一个buf" },
["<c-l>"] = { ":bn<CR>","上一个buf" },
["<c-d>"] = { ":bd!<CR>","关闭当前buf" },
["Y"] = { '"+y',"复制到系统剪切板",mode="v"},
["U"] = { ":UndotreeToggle<CR>","打开Undotree" },
["<F4>"] = { ":set relativenumber!<CR>","行号显示" },
["<M-f>"] = { ":FZF<CR>", "打开FZF" },
["<c-g>"] = { ":LazyGit<CR>", "打开Lazygit" },
["<leader>e"] = { "<Cmd>CocCommand explorer<CR>", "文件资源列表" },

g = {
	name = "go",
	u = "转为小写",
	U = "转为大写",
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
	w = { "<Plug>(coc-translator-p)", "翻译文本" },
	w = { "<Plug>(coc-translator-pv)", "翻译文本",mode="v"},
	r = { "<Plug>(coc-translator-r)", "替换文本" },
	r = { "<Plug>(coc-translator-rv)", "替换文本",mode="v" },
	},

["<leader>mt"] = { ":TableModeToggle<CR>", "表格模式" },
["<leader>w"] = { ":lua require('nvim-window').pick()<CR>", "窗口切换" },

["<M-p>"] = "自动补括号",
["<M-n>"] = "转到下一个括号",
}, {mode = "n",prefix = "",buffer = nil,silent = true,noremap = true,nowait = false})

EOF

autocmd FileType markdown :call MarkdownKey()

func! MarkdownKey()
lua <<EOF
local wk = require("which-key")

wk.register({
["gj"] = { "<Plug>Markdown_MoveToNextHeader","下一个标题" },
["gk"] = { "<Plug>Markdown_MoveToPreviousHeader","上一个标题" },
["gJ"] = { "<Plug>Markdown_MoveToNextSiblingHeader","下一个兄弟标题" },
["gK"] = { "<Plug>Markdown_MoveToPreviousSiblingHeader","上一个兄弟标题" },
["gc"] = { "<Plug>Markdown_MoveToCurHeader","当前标题" },
["gx"] = { "<Plug>Markdown_OpenUrlUnderCursor","打开引用" },
["m-"] = { ":HeaderDecrease<CR>","降低标题级别" },
["m+"] = { ":HeaderIncrease<CR>","增加标题级别" },
})
EOF
endfunc
