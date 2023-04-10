#Bat
*clone of cat(1) with syntax highlighting and Git integration"

## MANPAGER
- adds improved manpage display
- enabled in install.conf.yaml by:
> export MANPAGER="sh -c 'col -bx | bat -l man -p'"
- for dotfiles, use symlink with dot (.zshrc, not zshrc)

## Manpages
search '/'

Syntax highlighting for a command:
bat --languages=sh &lt;&lt;&lt; '&ltcommand&gt;

Download (httpie) and Display a File:
bat &lt;&lt;&lt; $(http &lt;web-address&gt;)
