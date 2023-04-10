# Dotbot
*a tool that bootstraps your dotfiles*

### Dotbot Setup

- clone dotbot as a submodule of our repo
> git submodule add https://github.com/anishathalye/dotbot
> git config -f .gitmodules submodule.dotbot.ignore dirty
- copy Dotbot installer to our dotfiles directory
> cp dotbot/tools/git-submodule/install .
> touch install.conf.yaml

###### starter install.conf.yaml content:
``` yaml
- defaults:
    link:
      relink: true

- clean: [~]
```

### Dotbot Tasks

- add a file to Dotbot symlinks
from project directory, copy in original file without leading '.'
> mv &lt;path/.file&gt; &lt;dotfiles/file-without-dot&gt;
add to 'links:' section in install.conf.yaml:
``` yaml
link:
    - ~/.<dotfile>: <dotfile>

- create directories:
``` yaml
- create:
    - ~/<dirname>
```

- run shsll scripts
``` yaml
- shell:
    - 
      command: ./test.zsh
      stdout: true
      stderr: true
```

##### Symbolic Links
*symbolic link: a file that contains a reference to another file or directory in the form of an absolute or relative path*

- symlink a dotfile
*assumes target repo folder ~/dotfiles*
*this specific renaming convention is used by Dotbot*
``` zsh
cd dotfiles
mv ~/.<name> <name>
ln -s ~/dotfiles/<name> ~/.<name>
```
> NOTE: This task is normally handled by Dotbot.


