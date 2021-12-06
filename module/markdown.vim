" markdown 快捷键
"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> <silent> ,, <++>
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,r <Esc>/<++><CR>N:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/<++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,u <u></u> <++><Esc>F/hi
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ]
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,k [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>

 autocmd Filetype markdown inoremap <buffer> \1 <space><++> <bar><Esc>0jA ---- <bar><Esc>0jA <++> <bar><Esc>0jA <++> <bar>
" 切换标题
autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m1 <Esc>:s/^#*\s//<CR>0i#<Space><Esc>:noh<CR>
autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m2 <Esc>:s/^#*\s//<CR>0i##<Space><Esc>:noh<CR>
autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m3 <Esc>:s/^#*\s//<CR>0i###<Space><Esc>:noh<CR>
autocmd Filetype markdown nnoremap <buffer> <silent> <leader>m4 <Esc>:s/^#*\s//<CR>0i####<Space><Esc>:noh<CR>

autocmd Filetype markdown nnoremap <buffer> <silent> <leader>mf <Esc>/<++><CR>
autocmd Filetype markdown nnoremap <buffer> <silent> <leader>mi :nohlsearch<CR>d4li
" 插入当前时间
autocmd Filetype markdown inoremap <buffer> <silent> ,t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" md-img-paste
let file_name = expand('%:t:r')
let g:mdip_imgdir = "media/".file_name
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

" markdown-preview
let g:mkdp_browser = 'firefox'

" vim-table-mode
noremap <Leader>tm :TableModeToggle<CR>


" vim-markdown
let g:vim_markdown_folding_level=2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
noremap mt :Toc<CR>:vert res 40<CR>
