#!/bin/bash
### Setup

echo "Installing Pathogen...";
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;

echo "Intalling Dependencies";
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree;
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim;
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline;
curl -LSso ~/.vim/colors/PaperColor.vim https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim;

if [[ -f ~/.vimrc ]]; then
  DATE=`date +%Y-%m-%d:%H:%M:%S`;
  echo "::::::::::: WARNING :::::::::::::::::::"
  echo "You had an existing vimrc, creating backup: $DATE"
  echo ":::::::::::::::::::::::::::::::::::::::"
  cp ~/.vimrc ~/.vimrc_copy_$DATE;
fi

echo "Creating ~/.vimrc with default config"
curl -LSso ~/.vimrc https://raw.githubusercontent.com/g3org3/custom-vim/master/vimrc
