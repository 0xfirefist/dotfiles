#!/bin/zsh

echo "Adding config files to home directory"
# 1 zshrc file
if [ -f $HOME/.zshrc ] ; then
    rm $HOME/.zshrc
fi
ln -s -T "$(pwd)/zshrc" $HOME/.zshrc

# setting zsh as default shell
echo "Set zsh as your default shell"
chsh -s /bin/zsh $(whoami)

source $HOME/.zshrc

