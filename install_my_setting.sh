#/bin/bash

echo "Copy vimrc into your home directory..."
cp vimrc ~/.vimrc
echo "Git pull sublim theme"
git clone https://github.com/sickill/vim-monokai.git
# Need to check whether ~/.vim exist first
echo "Copy .vim/ dir to your home directory..."
cp -r vim/ ~/vim
rm -rf ~/.vim
mv ~/vim/ ~/.vim
cd vim-monokai/colors && mkdir ~/.vim/colors/ &&cp monokai.vim ~/.vim/colors/
echo "Copy screenrc into your home directory..."
cp screenrc ~/.screenrc
echo "Finished!"
