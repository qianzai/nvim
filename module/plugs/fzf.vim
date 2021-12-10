let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" FZF
nmap <M-f> :FZF<CR>
vnoremap Rg y:Rg <c-r>"<cr>
