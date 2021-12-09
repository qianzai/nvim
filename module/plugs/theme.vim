set termguicolors " enable true colors support"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"color dracula
color deus

" nvim-transparent
let g:transparent_enabled = v:true

" Show buffers on top
let g:airline#extensions#tabline#enabled=1
"Show buffers count
let g:airline#extensions#tabline#buffer_nr_show=1

let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1

" xtabline
let g:xtabline_settings = get(g:, 'xtabline_settings', {})
let g:xtabline_settings.tabline_modes = ['buffers','tabs', 'arglist']
