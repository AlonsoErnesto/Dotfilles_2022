autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd BufAdd NERD_tree_*,your_buffer_name.rb,*.js :let b:coc_current_word_disabled_in_this_buffer = 1
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>


highlight CocFloating ctermbg=White
:highlight CocErrorFloat ctermfg=Red
hi Pmenu ctermfg=black ctermbg=DarkGreen 
hi PmenuSel ctermfg=white ctermbg=DarkGreen 

hi CocErrorSign ctermfg=red  guibg=red
hi CocErrorFloat ctermfg=white ctermbg=red

hi CocInfoSign ctermfg=blue 
hi CocInfoFloat ctermfg=white ctermbg=blue

hi CocWarningSign ctermfg=white ctermbg=yellow


""" Customize colors
func! s:my_colors_setup() abort
    " this is an example
    hi Pmenu guibg=#d7e5dc gui=NONE
    hi PmenuSel guibg=#b7c7b7 gui=NONE
    hi PmenuSbar guibg=#bcbcbc
    hi PmenuThumb guibg=#585858
endfunc

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END
