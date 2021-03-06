#!/usr/bin/env bash

# {
    # Installation: 
    # -L 选项是强制重定向
    # git clone --recursive https://github.com/sh7ning/vim_thes.git $HOME/.vim_thes && sh $HOME/.vim_thes/install.sh
    # Or
    # curl https://raw.githubusercontent.com/sh7ning/vim_thes/master/install.sh -L > thesVimBoot.sh && sh thesVimBoot.sh
# }

app_dir="$HOME/.vim_thes"

echo "start installing"
today=`date +%Y%m%d_%s`
echo "backing up current vim config(~/.vim, ~/.vimrc, ~/.vimrc.bundles) and looks like .vim."$today
for i in $HOME/.vim $HOME/.vimrc $HOME/.vimrc.bundles; do [ -e $i ] && [ ! -L $i ] && mv "$i" "$i.$today"; done

##
if [ ! -e "$app_dir" ]; then
    echo "cloning vimrc .."
    git clone --recursive https://github.com/sh7ning/vim_thes.git $app_dir
fi

echo "Setting up vim symlinks"
if [ ! -d "$app_dir/.vim/bundle" ]; then
    mkdir -p "$app_dir/.vim/bundle"
fi
if [ ! -d "$app_dir/.vim/undo" ]; then
    mkdir -p "$app_dir/.vim/undo"
fi
ln -sf $app_dir/.vimrc $HOME/.vimrc
ln -sf $app_dir/.vimrc.bundles $HOME/.vimrc.bundles
ln -sf $app_dir/.vim $HOME/.vim

echo "installing vundle"
if [ ! -e "$HOME/.vim/bundle/vundle" ]; then
    git clone https://github.com/gmarik/vundle.git "$HOME/.vim/bundle/vundle"
fi
echo "installing plugins using Vundle"
vim +BundleInstall! +BundleClean +qa
