#!/bin/zsh

# oh-my-zsh
# dependency - zsh, curl, wget, git
echo "Installing Ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# antigen - plugin manager for zsh
echo "Installing Antigen"
curl -L git.io/antigen > antigen.zsh
mv antigen.zsh $HOME/.antigen.zsh

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

# 2 antigenrc file
ln -s -T "$(pwd)/antigenrc" $HOME/.antigenrc

# setting zsh as default shell
echo "Set zsh as your default shell"
chsh -s /bin/zsh $(whoami)

# adding colorls config
rm -rf "$HOME/.config/colorls"
ln -s -T "$(pwd)/colorls" "$HOME/.config/colorls"   












