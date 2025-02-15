silent! source $VIMRUNTIME/defaults.vim

set history=100
set ruler
set nocompatible
set nomodeline
set cursorline
set laststatus=2
set mouse=
set nopaste

set encoding=utf-8
set fileencoding=utf-8

set tabstop=8 softtabstop=0
set shiftwidth=4 smarttab

syntax on
set background=dark

highlight Normal       ctermfg=188 ctermbg=none
highlight CursorLine   ctermbg=234 cterm=NONE
highlight MatchParen   ctermfg=16 ctermbg=220
highlight ModeMsg      ctermfg=235 ctermbg=220
highlight Visual       ctermbg=24

highlight Comment      ctermfg=35 cterm=none

highlight Constant ctermfg=75 ctermbg=NONE cterm=NONE
highlight String ctermfg=173 ctermbg=NONE cterm=NONE
highlight Character ctermfg=173 ctermbg=NONE cterm=NONE
highlight Number ctermfg=151 ctermbg=NONE cterm=NONE
highlight Boolean ctermfg=75 ctermbg=NONE cterm=NONE
highlight! link Float Number

highlight Identifier ctermfg=117 ctermbg=NONE cterm=NONE
highlight Function ctermfg=228 ctermbg=NONE cterm=NONE
highlight! link Operator Normal
highlight Keyword ctermfg=75 ctermbg=NONE cterm=NONE

highlight Statement ctermfg=176 ctermbg=NONE cterm=NONE
highlight Conditional ctermfg=176 ctermbg=NONE cterm=NONE
highlight Repeat ctermfg=176 ctermbg=NONE cterm=NONE
highlight Label ctermfg=176 ctermbg=NONE cterm=NONE
highlight Exception ctermfg=176 ctermbg=NONE cterm=NONE

highlight PreProc ctermfg=176 ctermbg=NONE cterm=NONE
highlight Include ctermfg=176 ctermbg=NONE cterm=NONE
highlight Define ctermfg=75 ctermbg=NONE cterm=NONE
highlight Macro ctermfg=176 ctermbg=NONE cterm=NONE
highlight PreCondit ctermfg=176 ctermbg=NONE cterm=NONE

highlight Type ctermfg=75 ctermbg=NONE cterm=NONE
highlight StorageClass ctermfg=75 ctermbg=NONE cterm=NONE
highlight Structure ctermfg=75 ctermbg=NONE cterm=NONE
highlight Typedef ctermfg=75 ctermbg=NONE cterm=NONE

highlight Special ctermfg=179 ctermbg=NONE cterm=NONE
highlight SpecialComment ctermfg=65 ctermbg=NONE cterm=NONE

highlight Error ctermfg=188 ctermbg=124 cterm=undercurl
highlight SpellBad ctermfg=203 ctermbg=NONE cterm=undercurl
highlight SpellCap ctermfg=203 ctermbg=NONE cterm=undercurl
highlight SpellRare ctermfg=203 ctermbg=NONE cterm=undercurl
highlight SpellLocal ctermfg=203 ctermbg=NONE cterm=undercurl

" html
highlight htmlTag ctermfg=8
highlight! link htmlEndTag htmlTag
highlight! link htmlTagName Keyword
" php
highlight! link phpVarSelector phpIdentifier
highlight! link phpKeyword Keyword
highlight! link phpMemberSelector Operator
highlight! link phpSpecialFunction Function
highlight! link phpMethodsVar Function

" custom
hi User1 ctermfg=188 ctermbg=239
hi User2 ctermfg=16 ctermbg=237
hi User3 ctermfg=58 ctermbg=229
hi User4 ctermfg=22 ctermbg=157
hi User5 ctermfg=22 ctermbg=114
hi User7 ctermfg=188 ctermbg=236
hi User8 ctermfg=16 ctermbg=245
hi User9 ctermfg=188 ctermbg=237
hi User0 ctermfg=188 ctermbg=25

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %=\                              "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction
