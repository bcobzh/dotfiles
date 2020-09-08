let mapleader = " "
nnoremap <Space> <Nop>
set showcmd
" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Move by line
nnoremap j gj
nnoremap k gk
" nnoremap <Leader>pv :30Vexplore<CR>
nnoremap <Leader>pv :20Lexplore<CR>
"
"
" =============================================================================
" # Keyboard shortcuts
" =============================================================================
" ; as :

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
map sr <C-w>r

" Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>


" Open hiotkeys
"map <C-p> :Files<CR>
"nmap <leader>; :Buffers<CR>

" Quick-save
nmap <leader>w :w<CR>
" -----------------------------------------------------
" clipboard 
" "+ The X11 clipboard, used with cut, copy, and paste
" "* The X11 primary, used with middle mouse button
" -----------------------------------------------------
vmap <Leader>y "+y
nmap <Leader>p "*p
vmap <Leader>p "*p

nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
