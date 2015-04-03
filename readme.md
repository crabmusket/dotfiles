# dotfiles

## Ubuntu setup

    sudo apt-get install git -y
    git clone git@github.com:eightyeight/dotfiles.git
    mv dotfiles/.[!.]* .
    git clone git@github.com:eightyeight/vimfiles.git --branch ubuntu
    mv vimfiles .vim
    echo 'source ~/.vim/.vimrc' > .vimrc
    sudo apt-get install xmonad xmobar suckless-tools cabal-install -y
    cabal update && cabal install xmonad-contrib-0.11.3
    gsettings set org.gnome.desktop.background show-desktop-icons false
