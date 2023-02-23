filetype plugin indent on

" Enable LaTex syntax
syntax enable

" Preffered PDF viewer
let g:vimtex_view_method = 'zathura'

" Generic interface
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" Enable localleader
let maplocalleader = ","