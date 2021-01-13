" Vim global plugin providing a few commands that make working with hex values slightly easier
" Maintainer:	Spencer Powell <pagwin@pagwin.xyz>
" License:      This file is placed in the public domain.

if exists("g:loaded_HexEdit")
    finish
endif
let s:toggled = 0
function! ToggleHexEdit()
	if s:toggled
		s:toggled = 0
		exe ":%!xxd -r"
	else
		s:toggled = 1
		exe ":%!xxd -ug 1"
	endif
endfunction

command HexEdit call ToggleHexEdit()
