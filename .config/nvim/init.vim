" Fish doesn't play all that well with others
set shell=/bin/bash
"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
" source ~/.vimrc

source $HOME/.config/nvim/config/plugins.vim

" plugins to load see  :Pl
source $HOME/.config/nvim/config/keyboard.vim
source $HOME/.config/nvim/config/gui.vim
source $HOME/.config/nvim/config/editor.vim
source $HOME/.config/nvim/config/autocommands.vim
source $HOME/.config/nvim/config/plug_conf_fuzzy.vim
source $HOME/.config/nvim/config/plugins_conf.vim
source $HOME/.config/nvim/config/colors.vim
source $HOME/.config/nvim/config/lang.vim
source $HOME/.config/nvim/plugins-config/rnvimr.vim

source $HOME/.config/nvim/plugins-config/co.vim
" =============================================================================
" # Footer
" =============================================================================

" nvim
"if has('nvim')
"	runtime! plugin/python_setup.vim
"endif
