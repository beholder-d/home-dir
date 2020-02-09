" Cheatsheet
" Ctrl-R Ctrl-R -- reload vimrc
" F2 -- Cycle edit (next line keeps comments and tabs) and paste (next line no comments and no tabs)
" F5 -- Cycle list!

" My VSL is so bright I better wear the shades
hi Visual ctermbg=96  guibg=#875f87

" Reload vimrc 
noremap <C-r><C-r> :source ~/.vimrc <CR>

" Better lists
set listchars=eol:$,tab:~~,trail:·,extends:>,precedes:<
noremap <F5> :set list!<CR>

" Tabs and Comments
set tabstop=4
set shiftwidth=4
set expandtab

" doesn't prevent from pasting in shell i.e. not automatic idents of 
function! GoodPasteMode()
    set nosmarttab " smarttab! -- would it toggle like list?
    set formatoptions-=cro
endfunction
call GoodPasteMode()

function! GoodEditMode() 
    set smarttab
    set formatoptions+=cro
endfunction

function! CycleEditModes()
    if &smarttab == "nosmarttab"
        echo "Good Edit Mode"
        call GoodEditMode()
    else
        echo "Good Paste Mode"
        call GoodPasteMode()
    endif
endfunction

noremap <F2> :call CycleEditModes()<CR>
