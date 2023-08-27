# dotfiles
My macOS and Linux Configuration Files

## Config yabai

```sh
# Install
brew install koekeishiya/formulae/yabai

# install the scripting addition
sudo yabai --install-sa

# if macOS Big Sur or Monterey, load the scripting addition manually; follow instructions below to automate on startup
sudo yabai --load-sa

# start yabai
brew services start yabai
```

```sh
# set start when booting
sudo visudo -f /private/etc/sudoers.d/yabai
```

```plaintext
# replace <user> with your username (output of: whoami). 
# change the path to the yabai binary if necessary  (output of: which yabai)
<user> ALL = (root) NOPASSWD: /usr/local/bin/yabai --load-sa
```

## Config skhd

```sh
# Install
brew install koekeishiya/formulae/skhd

# Start
brew services start skhd
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
gpg --gen-key
gpg --full-generate-key --expert
gpg --list-secret-keys --keyid-format LONG

# 导出公钥并复制到 github gpg key
gpg --armor --export 3AA5C34371567BD2

# Debian/Ubuntu 安装 gpg
sudo apt-get install gnupg2

# 配置 gpg
gpg2 --gen-key
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
curl -sS https://starship.rs/install.sh | sh

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
eval "$(starship init zsh)"
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
