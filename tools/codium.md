#Codium
*VS Code: Open-source code editor*
  (VS Codium: binary releases of VS Code without MS branding/telemetry/licensing)

## Configuration
- enable tab completion
  User : Text Editor : Tab Completion : on
- workbench.colorTheme
  - TechDocs: Abyss
  - Dotfiles: Kimbie Dark

### Installation
Homebrew: vscodium
Then, to add its binary to PATH:
``` zsh
cat << EOF >> ~/.zshrc
# Add VS Codium (codium)
export PATH="\$PATH:/Applications/vscodium.app/Contents/Resources/app/bin/codium"
EOF
```

### Preferences
- Settings
  - Editor
    - Tab Size: 2
    - Render Whitespace: all
    - Minimap: off
- Keyboard Shortcuts
  - open Terminal: 	ros`
    *where is this command?*

### Keyboard Shortcuts
- Explorer		scE
- Search / Find 	scF
- Source Control	rsG
- Run &amp; Debug	scD
- Extensions		scX
- Custom Keybindings
  - switch keyboard focus to Terminal r`
  ~~~ json
  "key": "ctrl+`","command":"workbench.action.terminal.focus",
  ~~~

### Open Another Project
- File > New Window

### Launching from the command line
- find Shell Commands
  - Command Commands: Palette (csP): search for "shell"
    - Shell Command: install 'codium' command in PATH
