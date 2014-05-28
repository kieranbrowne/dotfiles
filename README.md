#Dotfiles

## Features
### zshrc
- clean, minimal theme
- auto install oh-my-zsh
- access to rc files from any directory with ```vimrc```,```zshrc``` etc.

### vimrc
- jellybeans colour theme
- arrowkeys organise code
    - up + down reorder lines
    - left + right indent 
- ```tab``` inserts 4 spaces
- leader shortcuts
    - ```\s``` save
    - ```\q``` quit
    - ```\r``` run code (requires shebang line and executable permissions)
    - ```\nt``` open NERDTREE

### bin/
- ```runbackup``` one command compresses and encrypts important folders
    - easy to edit for own folders
- ```netspeed``` tests real download speeds
- ```ipsearch``` lists devices connected to local network
- ```passgen``` generates random password
    - 16 characters by default
    - use argument for specific length e.g. ```passgen 8``` for 8 chars long
- ```makeContactSheet``` creates an adobe bridge style contact sheet
    - works for all .jpg and .png in directory
- ```collage``` creates a square collage of images in directory 

##Installation
```
git clone https://github.com/kieranbrowne/dotfiles ~/dotfiles
bash ~/dotfiles/install.sh
```

Installation script forked from Michael J. Smalley's makesymlinks.sh
https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh
