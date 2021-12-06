let g:coc_global_extensions = [
			\'coc-vimlsp',
			\'coc-json',
			\'coc-sh',
			\'coc-vetur',
			\'coc-snippets',
			\'coc-prettier',
			\'coc-explorer',
			\'coc-marketplace',
			\'coc-markmap',
			\'coc-diagnostic',
			\'coc-translator']

" Use <c-x> to 触发提示
inoremap <silent><expr> <c-x> coc#refresh()

" 使用tab完成切换提示
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 使用回车选中提示
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 跳转报错位置
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 使用K打开一个窗口打开文档
" nnoremap <silent> P :call s:show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" coc-snippets
let g:snips_author = 'Qian Zai'
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" 变量重命名
nmap <leader>rn <Plug>(coc-rename)

" 格式化所选代码
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" coc-translator configuration
" popup
nmap <Leader>tt <Plug>(coc-translator-p)
vmap <Leader>tt <Plug>(coc-translator-pv)
" 导出翻译历史
nmap <leader>th :CocCommand translator.exportHistory<CR>

" 开关翻译列表
nmap <space>e <Cmd>CocCommand explorer<CR>
