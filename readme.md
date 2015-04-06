# dotfiles

## Ubuntu setup

Before:

    sudo apt-get install git -y
    git clone git@github.com:eightyeight/dotfiles.git
    mv dotfiles/.[!.]* .
    rm -r dotfiles
    echo 'export SSH_AUTH_SOCK="$GNOME_KEYRING_CONTROL/ssh"' >> .profile
    sudo apt-get install xmonad xmobar suckless-tools cabal-install -y
    cabal update && cabal install xmonad-contrib-0.11.3

After:

    gsettings set org.gnome.desktop.background show-desktop-icons false
    git clone git@github.com:eightyeight/vimfiles.git --branch ubuntu
    mv vimfiles .vim
    echo 'source ~/.vim/.vimrc' > .vimrc
    cd .vim && git submodule init && git submodule update && cd -

`sudo visudo` and add

    daniel ALL=(ALL:ALL) NOPASSWD: /etc/sbin/pm-suspend, /etc/sbin/pm-hibernate 
