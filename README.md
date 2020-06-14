# My dotfiles

## Howto 

* create a bare repository 

    ~~~
    git init --bare ~/dotfiles
    ~~~

*  alias / abbr 

	~~~
	# fish 
	echo "abbr dotfiles git --git-dir=$HOME/dotfiles --work-tree=$HOME" >> .config/fish/config.fish
	
	# bash 
	echo "alias dotfiles='git --git-dir=$HOME/dotfiles --work-tree=$HOME'" >> ~/.bashrc
	~~~

* no UntrackedFiles
	~~~
	dotfiles config --local status.showUntrackedFiles no
	~~~

Now you can user "dotfiles" alias ex: 

~~~
cd .config
dotfiles add fish
dotfiles commit
dotfiles push 
~~~
