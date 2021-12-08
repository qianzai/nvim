if empty(glob('~/.config/nvim/autoload/plug.vim'))
		silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
						\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
			autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
		endif

" ============================================================================================
" === Install Plugins with Vim-Plug
" ============================================================================================
call plug#begin('~/.config/nvim/plugged')
" theme
Plug 'theniceboy/nvim-deus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mg979/vim-xtabline'
Plug 'ryanoasis/vim-devicons'	"图标
Plug 'wincent/terminus'

" Plug 'xiyaowong/nvim-transparent'	"透背景明插件

" 突出显示当前光标对象（所有）
Plug 'RRethy/vim-illuminate'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Git
Plug 'airblade/vim-gitgutter'


" fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

" neovim浮动窗口打开ranger
Plug 'kevinhwang91/rnvimr'

" far 查找与替换
Plug 'brooth/far.vim'

" Undotree.vim
Plug 'mbbill/undotree'

" rainbow.vim 彩虹括号
Plug 'luochen1990/rainbow'

" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 代码片段
Plug 'honza/vim-snippets'

" 函数列表
Plug 'liuchengxu/vista.vim'

" 默认面板
Plug 'glepnir/dashboard-nvim'

" 快速注释
Plug 'preservim/nerdcommenter'

" 补括号
Plug 'jiangmiao/auto-pairs'

" 递进式补选中代码块
Plug 'gcmt/wildfire.vim'

" 移动光标选中文本
Plug 'matze/vim-move'

" 输入化自动切换
Plug 'lilydjwg/fcitx.vim', { 'branch': 'fcitx4' }

" 对光标内容添加包裹
Plug 'tpope/vim-surround' " 光标选中后，按 S+<需要包裹的符号>

" 显示对齐线，优化语法隐藏，如json
Plug 'Yggdroot/indentLine'

" 多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" 侧边栏上向您显示寄存器的内容
Plug 'junegunn/vim-peekaboo'

Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite

" 翻译插件
Plug 'voldikss/vim-translator'

Plug 'easymotion/vim-easymotion'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'ferrine/md-img-paste.vim' " <leader-p>
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
" Plug '907th/vim-auto-save'
call plug#end()

"==================== Start of Plugin Settings =====================
execute 'source ~/.config/nvim/module/plugs/theme.vim'
execute 'source ~/.config/nvim/module/plugs/fzf.vim'
execute 'source ~/.config/nvim/module/plugs/rnvimr.vim'
execute 'source ~/.config/nvim/module/plugs/undotree.vim'
execute 'source ~/.config/nvim/module/plugs/rainbow.vim'
execute 'source ~/.config/nvim/module/plugs/coc.vim'
execute 'source ~/.config/nvim/module/plugs/nerdcommenter.vim'
execute 'source ~/.config/nvim/module/plugs/dashboard-nvim.vim'
execute 'source ~/.config/nvim/module/plugs/suda.vim'
execute 'source ~/.config/nvim/module/plugs/vim-easymotion.vim'
execute 'source ~/.config/nvim/module/plugs/indentLine.vim'
" execute 'source ~/.config/nvim/module/plugs/vim-auto-save.vim'
execute 'source ~/.config/nvim/module/plugs/wildfire.vim'
execute 'source ~/.config/nvim/module/plugs/far.vim'
execute 'source ~/.config/nvim/module/plugs/vista.vim'
execute 'source ~/.config/nvim/module/plugs/vim-gitgutter.vim'
execute 'source ~/.config/nvim/module/plugs/vim-visual-multi.vim'
execute 'source ~/.config/nvim/module/plugs/vim-illuminate.vim'
execute 'source ~/.config/nvim/module/plugs/vim-move.vim'
execute 'source ~/.config/nvim/module/plugs/vim-translator.vim'
execute 'source ~/.config/nvim/module/plugs/vim-hexokinase.vim'
