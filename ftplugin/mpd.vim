" Vim filetype plugin file
" Language:	    MPD parallel language
" Version:	    1.3
" URL:          http://www.vim.org/scripts/script.php?script_id=560
" Maintainer:	Lukas Zapletal [lzap@root.cz]
" Last Change:	2003/01/15 

" This filetype contains small corrections.
" Put your own initialization here.

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

setlocal com=:#

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
set cpo-=C
