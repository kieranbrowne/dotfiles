############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="bashrc vimrc zshrc profile oh-my-zsh ghci snippets_custom.json" # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    mv ~/.$file ~/dotfiles_old/
    ln -s $dir/$file ~/.$file
done

#sudo apt-get install curl

install_vim () {
    #sudo apt-get install vim 
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    cd ~/.vim/bundle
    if [ ! -d nerdtree/ ]; then
        git clone https://github.com/scrooloose/nerdtree.git
    fi
    if [ ! -d emmet-vim/ ]; then
        git clone https://github.com/mattn/emmet-vim.git
    fi
    if [ ! -d webapi-vim/ ]; then
        git clone https://github.com/mattn/webapi-vim.git
    fi
    if [ ! -d ctrlp.vim/ ]; then
        git clone https://github.com/kien/ctrlp.vim.git
    fi
}

install_zsh () {
# Test to see if zshell is installed. If it is:
    if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
        # Clone my oh-my-zsh repository from GitHub only if it isn't already present
        if [ ! -d $dir/oh-my-zsh/ ]; then
            git clone http://github.com/michaeljsmalley/oh-my-zsh.git
        fi
        # Set the default shell to zsh if it isn't currently set to zsh
        if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
            chsh -s $(which zsh)
        fi
        else
        # If zsh isn't installed, get the platform of the current machine
        platform=$(uname);
        # If the platform is Linux, try an apt-get to install zsh and then recurse
        if [[ $platform == 'Linux' ]]; then
            sudo apt-get install zsh
            install_zsh
        # If the platform is OS X, tell the user to install zsh :)
        elif [[ $platform == 'Darwin' ]]; then
            echo "Please install zsh, then re-run this script!"
            exit
        fi
    fi
}

install_zsh
install_vim
# link custom theme into the themes folder
ln -s $dir/custom.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme
# symlink the gimprc
ln -s $dir/gimprc ~/.gimp-2.8/gimprc
# symlink the bin folder
cd ~
ln -s $dir/bin
# set solarized colorscheme
cd ~
wget -q --no-check-certificate -O .dircolors https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
if [ ! -d ~/gnome-terminal-colors-solarized/ ]; then
    git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
fi
./gnome-terminal-colors-solarized/set_dark.sh
