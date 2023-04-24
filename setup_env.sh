#!/bin/bash
set -x
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# tmux conf
curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/mikiya1991/bin/master/.tmux.conf
# install vim
if nvim --version; then
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -fLo ~/.config/nvim/init.vim  --create-dirs \
	https://raw.githubusercontent.com/mikiya1991/bin/master/neovim_setting
nvim +PlugInstall
else
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vimrc https://raw.githubusercontent.com/mikiya1991/bin/master/vim_setting
vim +PlugInstall
fi
#others
echo "export EDITOR=vim" >> ~/.zshrc
echo -e "\033[0;33m Better install the-silver-searcher,tmux\033[0m"
