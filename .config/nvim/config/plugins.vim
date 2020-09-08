
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')


Plug 'posva/vim-vue'

" Load plugins
" VIM enhancements
Plug 'ciaranm/securemodelines'
Plug 'editorconfig/editorconfig-vim'
Plug 'justinmk/vim-sneak'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lsp'
Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'Chiel92/vim-autoformat'

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rhysd/vim-clang-format'
"Plug 'fatih/vim-go'
Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'sebastianmarkow/deoplete-rust'

Plug 'chriskempson/base16-vim'

Plug 'kevinhwang91/rnvimr', {'do':'make sync'}

Plug 'tpope/vim-surround'

"Plug 'AndrewRadev/splitjoin.vim'
call plug#end()

inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
"autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc


let g:deoplete#enable_at_startup = 1
augroup filetype_rust
    autocmd!
    autocmd FileType rust
    \ let g:deoplete#enable_at_startup = 0
augroup end

nnoremap <leader>c :!cargo clippy

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

