"function! Themetest()
	"let s:bg = "#ffffff00"
	"let s:fg = "#ffffff"
	"let s:test12 = "#ff0000"
	"let s:test2 = "231"
	"let s:test21 = "235"
	"let s:test22 = "138"
	"let s:N1 = [s:fg, s:bg, s:test2, s:test21]
	"let g:airline#themes#alduin#palette = {}
	"let s:modified = {'airline_c': [s:test12, '', s:test22, '', '']}

	"let g:airline#themes#alduin#palette.accents = {'actest': ['#ff00ff', '#0000ff', 88, '#0000ff']}
	"let g:airline#themes#alduin#palette.normal = airline#themes#generate_color_map(s:N1, s:N1, s:N1)
	"let g:airline#themes#alduin#palette.normal_modified = s:modified
"endfunction
"autocmd VimEnter * call Themetest()


"function! DelLeft()
	"call airline#parts#define_text('k','k')
	"call airline#parts#define_accent('k', 'actest')
	"let g:airline_section_a = airline#section#create(['k', 'red'])
"endfunction
"autocmd VimEnter * call DelLeft()
let g:border_icon_l = ''
let g:border_icon_r = ''

function! UpdateABorderColor()
	let l:color_a = airline#themes#get_highlight('airline_a', 'bg')[1]
	let l:color_b = airline#themes#get_highlight('airline_b', 'bg')[1]
	let l:color_c = airline#themes#get_highlight('airline_c', 'bg')[1]
	let l:color_x = airline#themes#get_highlight('airline_x', 'bg')[1]
	
	"let l:color_c = l:color_b
	"let l:color_x = l:color_b
	
	let l:color_y = airline#themes#get_highlight('airline_y', 'bg')[1]
	let l:color_z = airline#themes#get_highlight('airline_z', 'bg')[1]
	if l:color_a == 'NONE'
		let l:color_a = '#ff0000'
	endif
	if l:color_b == 'NONE'
		let l:color_b = '#ff0000'
	endif
	if l:color_c == 'NONE'
		let l:color_c = '#ff000000'
	endif
	if l:color_x == 'NONE'
		let l:color_x = '#ff000000'
	endif
	if l:color_y == 'NONE'
		let l:color_y = '#ff0000'
	endif
	if l:color_z == 'NONE'
		let l:color_z = '#ff0000'
	endif
	execute 'highlight airline_a_border guibg=NONE			guifg='. l:color_a
	execute 'highlight airline_b_border guibg=#ffffff00 guifg='. l:color_b
	execute 'highlight airline_c_border guibg=#ffffff00 guifg='. l:color_c
	execute 'highlight airline_x_border guibg=#ffffff00 guifg='. l:color_x
	execute 'highlight airline_y_border guibg=#ffffff00 guifg='. l:color_y
	execute 'highlight airline_z_border guibg=#ffffff00 guifg='. l:color_z
endfunction
"autocmd Vimenter,ModeChanged * call UpdateABorderColor()
autocmd User AirlineModeChanged nested call UpdateABorderColor()

function! CreateBorder(borderTheme, list)
	return airline#section#create(['%#' . a:borderTheme . '#' . g:border_icon_l . '%#__restore__#'] + a:list + ['%#' . a:borderTheme . '#' . g:border_icon_r])
endfunction

function! Testfn(...)
	call a:1.add_section('airline_a_border', '  ')
	call a:1.add_section('airline_a', CreateBorder('airline_a_border', ['mode', '']))
	call a:1.add_section('airline_a_border', '  ')
	call a:1.add_section('airline_b', CreateBorder('airline_b_border', ['hunks']))
	call a:1.add_section('airline_a_border', '  ')
	call a:1.add_section('airline_c', CreateBorder('airline_c_border', ['%f ', 'readonly']))
	call a:1.split()
	"call a:1.add_section('airline_x', CreateBorder('airline_x_border', ['filetype']))
	call a:1.add_section('airline_x', CreateBorder('airline_x_border', ['%{battery#component()}']))
	call a:1.add_section('airline_a_border', '  ')
	call a:1.add_section('airline_y', CreateBorder('airline_y_border', ['ffenc']))
	call a:1.add_section('airline_a_border', '  ')
	call a:1.add_section('airline_z', CreateBorder('airline_z_border', ['%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#%#__accent_bold#%{g:airline_symbols.colnr}%v%#__restore__#']))
	call a:1.add_section('airline_a_border', '  ')
	return 1
endfunction
call airline#add_statusline_func('Testfn')
