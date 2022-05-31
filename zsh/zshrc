# 配置 zsh 自动补全
if [[ -d "${HOME}/.zsh-completions" ]]; then
  FPATH=${HOME}/.zsh-completions:$FPATH
fi

# 设置 alias 快捷键映射
alias finder_show='defaults write com.apple.finder AppleShowAllFiles YES'
alias finder_hide='defaults write com.apple.finder AppleShowAllFiles NO'
alias tmux="tmux -2"
alias ssh="ssh -X"
alias s="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias cp='cp -i'
alias mv="mv -i"
alias rm='rm -i'
alias slink="link -s"
alias ls='ls -F'
alias l="ls -l"
alias la="ls -a"
alias ll="ls -la"
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias lla='ls -la'
alias tree="tree --dirsfirst"
alias fs="stat -f \"%z bytes\""
alias grep="grep --color=auto"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias gs="git status"
alias gsm="git summary"
alias ga='git add'
alias gd='git diff'
alias gsh='git show HEAD'
alias gf='git fetch'
alias grb='git rebase'
alias gra="git remote add"
alias gbr='git branch'
alias gpl="git pull"
alias gps="git push"
alias gps-dev="git push --set-upstream dev"
alias gco="git checkout"
alias gls="git ls"
alias gll="git ll"
alias gcz="git cz"
alias gm="git merge"
alias gamd="git commit --amend --no-edit"

# 设置代理

alias proxy="export https_proxy=http://127.0.0.1:6152 http_proxy=http://127.0.0.1:6152 all_proxy=socks5://127.0.0.1:6153"
alias unproxy="unset http_proxy && unset https_proxy && unset all_proxy"

# 文件类型判断
alias -s go=code
alias -s py=code
alias -s java=code
alias -s txt=code
alias -s md=code
alias -s json=code

# Path to your oh-my-zsh installation.
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW="true"
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="212"

# 插件管理
plugins=(
	git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
    zsh-wakatime
    fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

export GPG_TTY=$(tty)

# brew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Functions

# extract archives -- usage: extract <file>
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar e $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip "$1" ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# extract archives -- usage: extract <file>
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar e $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip "$1" ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function tmp-upload() {
  local download_url=$(curl --upload-file ./$1 https://transfer.sh/$1)
  echo "curl -o $1 $download_url"
}