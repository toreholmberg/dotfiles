[freshshell](http://freshshell.com/) .dotfiles 
===

1. clone repo to ``~/.dotfiles``
2. install [freshshell](http://freshshell.com/)
3. remove generated freshrc file ``rm ~/.freshrc``
4. symlink freshrc file from repo ``ln -s ~/.dotfiles/freshrc ~/.freshrc``
5. add ``source ~/.fresh/build/shell.sh`` to your shell config 
6. run ``fresh update``
7. reload shell ``source ~/.bash_profile``
