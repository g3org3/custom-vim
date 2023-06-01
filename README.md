## custom-vim
### Easy install
```sh
curl -Ss https://raw.githubusercontent.com/g3org3/custom-vim/master/install_all.sh | bash
# warning, this script overwrites your existing ~/.vimrc
```

install vim-plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---

## nvim

install vim-plug

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

install nvim ubuntu

```sh
sudo snap install nvim --edge --classic
```

install macosx

```sh
brew install neovim
```

```sh
wget https://raw.githubusercontent.com/g3org3/custom-vim/master/init.vim
```


Coc.nvim list


locate coc.nvim if problems with build/index, you need to find and yarn install .local/share for mac

- coc-eslint
- coc-json
- coc-snippets
- coc-tsserver
- coc-java
- coc-styled-components


-- 
new config
- add to kcickstart

- https://github.com/neoclide/coc.nvim
- https://github.com/kessejones/git-blame-line.nvim



```
npm i -D eslint prettier eslint-config-prettier eslint-plugin-prettier
```


```
export $(cat env.properties | grep -v \# | grep -v -e '^$' | xargs)
```
