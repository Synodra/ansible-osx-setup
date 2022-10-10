" $HOME/.vim/init/functions.vimrc

" Toggles the theme from light to dark
function! ToggleThemeMode(style)
    if a:style == "dark"
        set background=dark
        let g:airline_theme='solarized'
        let g:airline_solarized_bg='dark'
        colorscheme solarized
    else
        set background=light
        let g:airline_theme='solarized'
        let g:airline_solarized_bg='light'
        colorscheme solarized
    en
endfunction
