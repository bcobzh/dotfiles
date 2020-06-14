" set colors 
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif
set background=dark
let base16colorspace=256
"colorscheme base16-default-dark
"
"

if has('termguicolors')
  set termguicolors
endif

let g:gruvbox_contrast_dark = 'soft'

" --- The Greatest plugin of all time.  I am not bias
let g:vim_be_good_floating = 1

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

colorscheme  gruvbox-material
set background=dark

syntax on
hi Normal ctermbg=NONE
" Brighter comments
" call Base16hi("Comment", g:base16_gui09, "", g:base16_cterm09, "", "", "")
