"Sets in-line spellchecking
set spell

" Set local language 
setlocal spell spelllang=en_us

" red underline
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal

" set hard wrap
set nocindent
let &l:flp = '^\s*\\\(end\|item\)\>'
set formatoptions+=n
set textwidth=80

" hot key to compile
map <F2> <Esc>:w<CR>:silent execute "!./make.sh&>/dev/null &"<CR>:silent execute "!cp paper.pdf /mnt/home/. &"<CR>:redraw!<CR>
