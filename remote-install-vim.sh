cd ~
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar xvf vim-7.4.tar.bz2
cd vim74
./configure --prefix=/$HOME/vim74 \
            --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.6/config \
            --enable-perlinterp \
            --enable-gui=gtk2 --enable-cscope \
            --enable-luainterp
make 
make install

echo alias vi="~/vim74/bin/vim" >> .bashrc
echo alias vi="~/vim74/bin/vim" >> .zshrc
