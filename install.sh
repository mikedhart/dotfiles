#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="aliases bashrc zshrc zshenv vimrc vim gitconfig oh-my-zsh tmux tmux.conf"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

ln -s ~/.config/terminator/config terminator

wget -O powerline-fonts.zip https://github.com/powerline/fonts/archive/master.zip
unzip powerline-fonts.zip
bash ./fonts-master/install.sh
rm -rf powerline-fonts
rm powerline-fonts.zip

# Update submodules for vim
sh update_submodules.sh

chsh -s /bin/zsh
