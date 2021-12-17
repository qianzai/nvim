" 命令
" HexokinaseToggle	Toggle the colouring
" HexokinaseTurnOn	Turn on colouring (refresh if already turned on)
" HexokinaseTurnOff	Turn off colouring

" noremap <leader>ht :HexokinaseToggle<CR>	"切换文件中颜色显示

let g:Hexokinase_highlighters = ['sign_column']

" Sample value, to keep default behaviour don't define this variable
let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript']
