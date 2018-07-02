DOTFILES_DIR=$(shell pwd)

unix:
	ln -sf vimrc ~/.vimrc
	ln -sf bashrc ~/.bashrc
	cp profile ~/.profile
	ln -sf spacemacs ~/.spacemacs
	ln -sf scripts ~/bin
	ln -sf gitconfig ~/.gitconfig
	ln -sf ssh_config ~/.ssh/config
	# ln -sf profiles.clj ~/.lein/

osx: unix
	sh osx-config
	# install oh my zsh

linux: unix
	# install oh my zsh

zsh:
	./zsh-setup

secure-ssh:
	passwd -l root
	echo "PermitRootLogin no" >> /etc/ssh/sshd_config
	echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

clean:
	-rm ~/.emacs
	-rm ~/.vimrc
	-rm ~/.profile
	-rm ~/.bashrc
	-rm -rf ~/.oh-my-zsh
	-rm ~/.zshrc
	-rm -rf ~/bin
	-brew remove --force --ignore-dependencies $(brew list)

