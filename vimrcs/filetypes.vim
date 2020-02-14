""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH<esc>FP2xi
au Filetype javascript setlocal ts=2 sts=2 sw=2


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif


""""""""""""""""""""""""""""""
" => Twig section
""""""""""""""""""""""""""""""
autocmd BufRead *.twig set syntax=html filetype=html


""""""""""""""""""""""""""""""
" => Ruby section
""""""""""""""""""""""""""""""
au Filetype ruby setlocal ts=2 sts=2 sw=2
au BufNewFile,BufRead *.jbuilder set ft=ruby


""""""""""""""""""""""""""""""
" => TypeScript section
""""""""""""""""""""""""""""""
au Filetype ts setlocal ts=2 sts=2 sw=2
au BufNewFile,BufRead *.ts set ft=ts


""""""""""""""""""""""""""""""
" => Html section
""""""""""""""""""""""""""""""
au Filetype html setlocal ts=2 sts=2 sw=2


""""""""""""""""""""""""""""""
" => Scss section
""""""""""""""""""""""""""""""
au Filetype scss setlocal ts=2 sts=2 sw=2


""""""""""""""""""""""""""""""
" => Yaml section
""""""""""""""""""""""""""""""
au Filetype yaml setlocal ts=2 sts=2 sw=2

""""""""""""""""""""""""""""""
" => Slim section
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.slim setlocal filetype=slim

""""""""""""""""""""""""""""""
" => Terraform section
""""""""""""""""""""""""""""""
autocmd FileType terraform setlocal commentstring=#%s

""""""""""""""""""""""""""""""
" => Vue section
""""""""""""""""""""""""""""""
autocmd FileType vue syntax sync fromstart
" autocmd BufRead *.vue set syntax=vue filetype=vue
au Filetype vue setlocal ts=2 sts=2 sw=2

""""""""""""""""""""""""""""""
" => Dart section
""""""""""""""""""""""""""""""
let dart_style_guide = 2
" au Filetype dart setlocal ts=2 sts=2 sw=2
