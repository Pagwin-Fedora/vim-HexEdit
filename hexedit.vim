" License:      This file is placed in the public domain.
let s:turnedOn = 0;
function! HexEditToggle()
	if s:turnedOn == 0
		%!xxd -ug 1 
	else
		%!xxd -r
	endif
endfunction
command HexToggle call HexEditToggle
