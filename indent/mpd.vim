" Vim indent file
" Language: MPD parallel programming language
" Maintainer: Lukas Zapletal [lzap@bach.cz]
" URL: http://www.vim.org/scripts/script.php?script_id=560
" Revised on: 2003/02/12
" Version: 1.1

" Only define the function once.
if exists("*GetMpdIndent") | finish | endif

setlocal indentexpr=GetMpdIndent()
setlocal autoindent
setlocal indentkeys=!^F,o,O,=end,=body

function! GetMpdIndent()
	" Find a non-blank line above the current line.
	let lnum = prevnonblank(v:lnum - 1)

	" Hit the start of the file, use zero indent.
	if lnum == 0
		return 0
	endif

	" Add a 'shiftwidth'
	let ind = indent(lnum)
	if getline(lnum) =~ '^\s*\(\<global\>\|\<resource\>\|\<body\>\)'
		let ind = ind + &sw
	elseif getline(lnum) =~ '{\s*$'
		let ind = ind + &sw
	endif

	" Subtract a 'shiftwidth'
	if getline(v:lnum) =~ '^\s*\(\<end\>\|\<body\>\|}\)'
		let ind = ind - &sw
	endif

	return ind
endfunction
