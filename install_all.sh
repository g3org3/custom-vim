#!/bin/bash
### Setup

echo -e "\nInstalling Pathogen...";
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;

echo "Installing Dependencies";
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree;
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim;
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline;
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive;
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim;
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter;
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim;
git clone https://github.com/powerline/fonts.git ~/.vim/bundle/powerline-fonts;
git clone https://github.com/terryma/vim-multiple-cursors.git ~/.vim/bundle/vim-multiple-cursors;

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

mv ~/.vimrc_new ~/.vimrc
