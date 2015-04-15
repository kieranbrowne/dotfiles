#Dotfiles

## Features
### zshrc
- clean, minimal theme
- auto install [zsh](http://www.zsh.org), [vim](http://www.vim.org), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), [nerdTree](https://github.com/scrooloose/nerdtree), [solarized](https://github.com/altercation/solarized)

### vimrc
- arrowkeys organise code
    - up + down reorder lines
    - left + right indent 
- ```tab``` inserts 4 spaces
- leader shortcuts
    - ```\s``` save
    - ```\q``` quit
    - ```\nt``` open NERDTREE
    - ```\l``` set solarized light theme
    - ```\d``` set solarized dark theme

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
- ```gitnumlines``` returns the number of tracked lines of code in a repo

###Installation
```
git clone https://github.com/kieranbrowne/dotfiles ~/dotfiles
bash ~/dotfiles/install.sh
```
###Acknowledgements
Installation script based on `makesymlinks.sh` by [Michael J. Smalley](https://github.com/michaeljsmalley/dotfiles]
