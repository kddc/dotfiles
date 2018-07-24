# Personal dotfiles

My personal dotfiles I use between my systems. Perfect for sharing the same
editor/config on your servers/local machine. Contains my preferred ruby vim
plugins.

# Setup

Option 1: Copy paste the respective folders to your home folder.

Option 2: Use the install.sh script to get started fast. This will backup your
existing dotfiles and use mine instead.

    # Make sure to have the following installed:
    apt-get install git vim zsh curl

    # Download dotfiles
    cd && git clone git@github.com:kddc/dotfiles.git
    cd ~/dotfiles/
    # Init submodules for oh-my-zsh
    git submodule init && git submodule update

    # Run installation script that copies all files into the correct location
    ./install.sh

    # Change shell to zsh
    chsh -s /bin/zsh

Remember to restart your shell by either re-logging or reloading the shell by
typing
    exec $SHELL
