#!/bin/bash
### Setup

echo -e "\nInstalling Pathogen...";
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;

echo "Installing Dependencies";
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree && vim -u NONE -c "helptags nerdtree/doc" -c q;
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim && vim -u NONE -c "helptags ctrlp.vim/doc" -c q;
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline && vim -u NONE -c "helptags vim-airline/doc" -c q;
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive && vim -u NONE -c "helptags vim-fugitive/doc" -c q;

echo "Installing Themes"
curl -LSso ~/.vim/colors/PaperColor.vim https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim;

echo "Creating ~/.vimrc with default config"
curl -LSso ~/.vimrc_new https://raw.githubusercontent.com/g3org3/custom-vim/master/vimrc
if [[ -f ~/.vimrc ]]; then
  DIFF=`diff ~/.vimrc ~/.vimrc_new`;
  if [[ -n "$DIFF" ]]; then
    DATE=`date +%Y-%m-%d`;
    echo "::::::::::: WARNING :::::::::::::::::::"
    echo "You had an existing vimrc, creating backup: $DATE"
    echo -e ":::::::::::::::::::::::::::::::::::::::\n"
    cp ~/.vimrc ~/.vimrc_copy_$DATE;
  fi
fi
