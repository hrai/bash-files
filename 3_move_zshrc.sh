if hash zsh 2>/dev/null; then
    echo 'Cloning zplugin....'
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
    echo 'Successfully cloned zplugin....'

    # securing the directories
    # sudo chmod -R 777 ~/.zplugin
    # sudo chown -R root:$USER ./.zplugin

    ZSH_DIR=~/.zsh
    echo "Moving key-bindings.zsh to $ZSH_DIR directory...."
    if [ ! -d $ZSH_DIR  ]; then
        mkdir $ZSH_DIR
        chmod 777 $ZSH_DIR
    fi

    cp key-bindings.zsh $ZSH_DIR/key-bindings.zsh
    echo "Successfully moved key-bindings.zsh to $ZSH_DIR directory...."

    echo 'Moving .zshrc to home directory....'
    cp .bashrc ~/.zshrc
    cat .zshrc >> ~/.zshrc
    echo "Successfully moved .zshrc to home directory...."

    echo 'Moving .zshenv to home directory....'
    cp .zshenv ~/.zshenv
    mkdir -p ~/.zsh/cache
    chmod 777 ~/.zsh/cache
    echo "Successfully moved .zshenv to home directory...."

    echo -e "\n"

    echo "Press any key to continue..."
    read
else
    echo "Please install zsh to run this script."
fi
