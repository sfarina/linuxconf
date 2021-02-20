set hlsearch
set ruler
set tabstop=3
set nocin
set noautoindent
syntax on
set notitle
set noicon
set guioptions-=T

"set foldmethod=marker
"set foldmarker={,}
syntax on
let g:tex_no_math = "1"

"execute pathogen#infect()


"FORTRAN SHIT
"let fortran_free_source=1
"let fortran_have_tabs=1
let fortran_do_enddo=1
"let fortran_fold=1
"let fortran_fold_multilinecomments=1
"let fortran_fold_conditionals=1
"set foldmethod=syntax
"
"
""syn match fortranComment excludenl "^[!C*].*$" contains=@fortranCommentGroup,@spell
"syntax on
""syn match fortranComment excludenl "^[!cC*].*$" contains=@fortranCommentGroup,@spell
""syn match fortranComment excludenl "^c.*$" contains=@fortranCommentGroup,@spell
""syn match fortranComment excludenl "^C.*$" contains=@fortranCommentGroup,@spell
""syn match fortranComment excludenl "!.*$" contains=@fortranCommentGroup,@spell
""let fortran_have_tabs=1


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

"set foldmethod=marker
"set foldmarker=\\begin,\\end
"colorscheme zenburn

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END


"vimplug
" re-enable after installing vimplug
"call plug#begin('~/.vim/plugged')
"Plug 'JuliaEditorSupport/julia-vim'
"call plug#end()
