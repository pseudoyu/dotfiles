# dotfiles
My macOS and Linux Configuration Files

## Install
```sh
$ git clone https://github.com/pseudoyu/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ sh ./setup.sh

or config what you need

$ sh ./scripts/brew.sh
$ sh ./scripts/npm.sh
$ sh ./scripts/vim.sh
$ sh ./scripts/rime.sh
$ sh ./scripts/hammerspoon.sh
```

## Back up your configuration if you want
```sh
$ sh ./scripts/backup.sh
```

## Update latest local configuration to .dotfiles if you want
```sh
$ sh ./scripts/update.sh
```

## Config your git
```sh
# git 配置
git config --global user.name "name"
git config --global user.email "name@email.com"
ssh-keygen -t rsa -b 4096 -C "name@email.com"

# 查看公钥并复制到 github ssh key
cat ~/.ssh/id_rsa.pub

# macOS
brew install git-delta

# Linux
# https://dandavison.github.io/delta/installation.html
```

## Git gpg config
```sh
# macOS安装 gpg
brew install gpg

# 配置 gpg
gpg --full-generate-key --expert
gpg --list-secret-keys --keyid-format LONG

# 导出公钥并复制到 github gpg key
gpg --armor --export 3AA5C34371567BD2

# Debian/Ubuntu 安装 gpg
sudo apt-get install gnupg2

# 配置 gpg
gpg2 --full-generate-key --expert
gpg2 --list-secret-keys --keyid-format LONG

# 导出公钥并复制到 github gpg key
gpg2 --armor --export 3AA5C34371567BD2

# 配置环境变量
echo 'export GPG_TTY=$(tty)' >> ~/.zshrc
source ~/.zshrc
```

## git-cz and git-chglog config
```sh
# 安装 git-cz
npm install -g commitizen

# 安装 changelog
npm install -g cz-conventional-changelog

# 配置全局变量
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

## zsh Conf
```sh
sudo apt install wget git curl

# Theme
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# zsh-wakatime
cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/wbingli/zsh-wakatime.git

# fzf-zsh-plugin
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
```

### Add these lines to .zshrc
```sh
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW="true"
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="212"
```

## Before Installing Vim
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## After Installing Vim, Download the Plugin
```sh
$ vim
$ :GoInstallBinaries
$ :PlugInstall
$ :PlugClean
$ :PlugUpdate
```

## Go Setting
```sh
wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo tar xzvf go1.16.7.linux-amd64.tar.gz -C /usr/local/
mkdir -p $HOME/go/{bin,pkg,src}
```

### Add these lines to .zshrc
```sh
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```

## Rust Setting
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```