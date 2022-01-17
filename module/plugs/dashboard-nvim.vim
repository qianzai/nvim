let g:dashboard_default_executive ='fzf'
let g:indentLine_fileTypeExclude = ['dashboard']
let g:dashboard_footer_icon = '🐬 '
let g:dashboard_custom_header = [
   \'                                   ',
   \'                                   ',
   \'   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ',
   \'    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
   \'          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ',
   \'           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
   \'          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
   \'   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
   \'  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
   \' ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
   \' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ',
   \'      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
   \'       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
   \]

let g:dashboard_preview_file_height = 77
let g:dashboard_preview_file_width = 37

let g:dashboard_custom_section={
    \ 'a_new_file'             :{
          \ 'description': [' 新建文件                 SPC f n'],
          \ 'command':function('dashboard#handler#new_file')},
    \ 'b_find_file'             :{
          \ 'description': [' 查找文件                 SPC f f'],
          \ 'command':function('dashboard#handler#find_file')},
    \ 'c_find_history'             :{
          \ 'description': [' 历史文件                 SPC f h'],
          \ 'command':function('dashboard#handler#find_history')},
    \ 'd_book_marks'             :{
          \ 'description': [' 跳转标签                 SPC f b'],
          \ 'command':function('dashboard#handler#book_marks')},
    \ 'e_find_word'             :{
          \ 'description': [' 查找内容                 SPC f w'],
          \ 'command':function('dashboard#handler#find_word')},
    \ 'f_change_colorscheme'          :{
          \ 'description': [' 切换主题                 SPC c t'],
          \ 'command':function('dashboard#handler#change_colorscheme')},
  \ }

" nnoremap <silent> <Leader>fn :DashboardNewFile<CR>
" nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
" nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
" nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>fw :DashboardFindWord<CR>
" nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>


nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

