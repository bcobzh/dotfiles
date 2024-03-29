abbr -a vim nvim
abbr -a vi nvim
abbr -a vimdiff 'nvim -d'

if command -v eza > /dev/null
	abbr -a l 'eza'
	abbr -a ls 'eza'
	abbr -a ll 'eza -l'
	abbr -a lll 'eza -la'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

abbr -a k kubectl
abbr -a kns kubens
abbr -a kct kubectx
abbr -a nv neovide
abbr -a gitgraph 'git log --oneline --graph --decorate --all'
# Set envvars since we don't have .pam_environment
setenv EDITOR nvim
setenv BROWSER links
setenv NAME "b.couloigner"
setenv EMAIL b.couloigner@gmail.com
set PATH $PATH ~/.cargo/bin ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/ ~/.local/bin/ ~/.npm-global/bin/ ~/.local/share/gem/ruby/3.0.0/bin


# Fish should not add things to clipboard when killing
# See https://github.com/fish-shell/fish-shell/issues/772
set FISH_CLIPBOARD_CMD "cat"

function fish_user_key_bindings
	bind \cz 'fg>/dev/null ^/dev/null'
	if functions -q fzf_key_bindings
		fzf_key_bindings
	end
end
bind \cw kill-word
function fish_prompt
	set_color normal
	if [ $PWD != $HOME ]
		set_color brblack
		set_color yellow
		echo -n $PWD | sed "s!$HOME!~!"
else
	echo -n "~/"
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '> '
	set_color normal
end

function fish_greeting
	set_color normal
end

set TERMINAL alacritty
# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end


# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3
#  Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

# starship init fish | source
