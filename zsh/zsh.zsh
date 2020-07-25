#!/bin/zsh

echo "Installing Z"
git clone https://github.com/rupa/z.git
mv ./z/z.sh $HOME/.z.sh
rm -rf z

echo "Adding config files to home directory"
# 1 zshrc file
if [ -f $HOME/.zshrc ] ; then
    rm $HOME/.zshrc
fi
ln -s -T "$(pwd)/zshrc" $HOME/.zshrc

# setting zsh as default shell
echo "Set zsh as your default shell"
chsh -s /bin/zsh $(whoami)

# adding colorls config
rm -rf "$HOME/.config/colorls"
ln -s -T "$(pwd)/colorls" "$HOME/.config/colorls"   

source $HOME/.zshrc










