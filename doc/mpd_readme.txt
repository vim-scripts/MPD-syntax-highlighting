MPD syntax and intent file
~~~~~~~~~~~~~~~~~~~~~~~~~~

Info:
~~~~~

Author: Lukas Zapletal [lzap@root.cz]

MPD is a parallel programming language very similar to SR.
This package includes syntax highlighting script, indenting
script (with MPD specialities) and ftplugin script that sets
some minor attributes.

Installation:
~~~~~~~~~~~~~

Extracts files to ~/.vim directory (on windows ~/vimfiles).
Then add these lines to .vimrc (on windows _vimrc):

augroup filetypedetect
au! BufNewFile,BufRead *.mpd setlocal filetype=mpd
augroup END

It is important to set the filetype via setlocal, because 
in some cases (e.g. when the file starts with several lines 
of comment) it can be recognized as a config file already.

Limitations:
~~~~~~~~~~~~

Indenting understands all specialities like in-ni, co-oc or
global/resource-body-end. Unfortunately there is one small
thing to keep in mind.

In MPD everything must be encloded to blocks, following is
illegal:

if (...)
	do something;

You must use brackets:

if (...) {                                               (*)
	do somethig;
}

Authors of the language in the tutorial uses this style for
one line blocks:

if (...)
	{ do something; }

Because I want to keep the syntax implementation simple, 
it does indenting this way:

if (...)
{ do something; }

I recommend to use C/C++ style that is IMHO better, see (*).

History:
~~~~~~~~

1.0
* first release

1.1
* changes in syntax file
* added first indenting script

1.2
* indenting fixed
* minor fixes in syntax highlighting

1.3
* ftplugin added to the package
* fix in syntax highlighting
* fix in indenting
* this readme was added

