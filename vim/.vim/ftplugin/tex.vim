setlocal textwidth=79

setlocal iskeyword+=:,-
setlocal makeprg=pdflatex\ -file-line-error\ -interaction=nonstopmode\ %
setlocal shiftwidth=2

" inoremap <buffer> { {}<ESC>i
" inoremap <buffer> [ []<ESC>i

iab <buffer> ,b \begin{
iab <buffer> ,e \end{
