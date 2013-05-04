e_header "Installing Personal Stuff"
    
if [[ "$OSTYPE" =~ ^darwin ]]; then
	  recipes=(readline sqlite gdbm python)

	  list="$(to_install "${recipes[*]}" "$(brew list)")"
	  if [[ "$list" ]]; then
		e_header "Installing Homebrew recipes: $list"
		brew install $list
        if [ $list == "python" ]; then
            pip install --upgrade distribute
            pip install --upgrade pip
        fi
	  fi
  
elif [[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]]; then
    sudo apt-get -qq install python
fi

# Install Python packages.
if [[ "$(type -P pip)" ]]; then
  eggs=(virtualenv virtualenvwrapper Powerline)

  list="$(to_install "${eggs[*]}" "$(pip list | awk '{print $1}')")"
  if [[ "$list" ]]; then
    e_header "Installing python packages: $list"
    if [ $list == "Powerline" ]; then
        pip install --user git+git://github.com/Lokaltog/powerline
    elif [ $list == "macvim" ]; then
        e_header "Installing macvim"
        brew install macvim --env-std --override-system-vim
    else
        pip install $list
    fi
  fi
fi

if [ ! -e ~/.config/powerline/ ]; then
	e_header "Installing powerline config"
	mkdir -p ~/.config/powerline
	cp -R /usr/local/lib/python2.7/site-packages/powerline/config_files/* ~/.config/powerline
fi

if [ ! -e ~/powerline-fonts ]; then
	e_header "Installing powerline-fonts"
	git clone https://github.com/Lokaltog/powerline-fonts.git ~/powerline-fonts
fi



if [ ! -e ~/.vim/bundle/vundle ]; then
	e_header "Installing vundle"
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

#vim -e -s -c BundleInstall
