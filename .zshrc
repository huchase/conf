if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git zsh-completions zsh-autosuggestions zsh-syntax-highlighting vscode)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
### util
### ALIAS
## alias-base
alias vi="vim"
alias mk="mkdir"
alias rb="shutdown -r now"
alias po="shutdown now"
alias su="sudo su"
alias cl="clear"
alias tz="tar zxvf"
alias uz="unzip"
alias py="python3"
alias rm="rimraf"
alias th="touch"
alias ls="ls -F --color=auto"
alias jk="cd ~/wp" 
alias jkb="cd ~/wp/blog/pages/posts" 
## alias-bin
alias cla="cd ~/clash && cat ~/.pwd | sudo -S ./clash -d ."
alias mc='~/mc/jdk/bin/java -jar ~/mc/HMCL.jar'
alias tp='~/apps/typora/Typora'
## alias-application
alias g="google-chrome &"
alias c="code"
alias e="nautilus . &"
aria2_download() {
  aria2c -d ~/downloads $1;
}
alias ari="aria2_download"
alias red="redshift -l 28:116"
## alias-dotfile
alias zcc="vim ~/.zshrc"
alias vcc="vim ~/.vimrc"
alias tcc="vim ~/.tmux.conf"
## alias-apt
#alias ai="cat ~/.pwd | sudo -S apt install"
alias ai="sudo apt install"
alias ay="cat ~/.pwd | sudo -S apt install -y"
alias au="cat ~/.pwd | sudo -S apt update -y"
#alias ag="cat ~/.pwd | sudo -S apt upgrade -y"
alias ag="sudo apt upgrade"
alias as="apt search"
## alias-git
github_remote() {
  git remote set-url origin git@github.com:huchase/$1.git;
}
alias gr='github_remote'
github_clone() {
  git clone https://github.com/$1.git;
}
alias gc='github_clone'
alias dg='degit'
alias gt='git clone'
## alias-tmux
# https://www.ruanyifeng.com/blog/2019/10/tmux.html
tmux_new(){
  if [ ! $1 ];then
    tmux;
  else
    tmux new -s $1;
  fi
}
alias tn="tmux_new"
#alias td="tmux detach"
#alias te="exit"
alias ta="tmux attach -t"
#alias tk="tmux kill-session -t"
alias tl="tmux ls"
#alias tw="tmux new-window"
#alias tg="tmux split-window -h"
#alias tgg="tmux split-window"
#alias U="tmux select-pane -U"
#alias D="tmux select-pane -D"
#alias L="tmux select-pane -L"
#alias R="tmux select-pane -R"
## alias-docker
alias dl="docker images"
alias dp="docker ps"
alias dpa="docker ps -a"
alias drc="docker rm"
alias dri="docker rmi"
alias dr="docker run"
## alias-proxy
proxy_on() {
  export all_proxy=socks://127.0.0.1:7891/
  export http_proxy=http://127.0.0.1:7890/
  export no_proxy=localhost,127.0.0.0/8,::1
  export https_proxy=http://127.0.0.1:7890/
  gsettings set org.gnome.system.proxy mode 'manual';
}
proxy_off() {
  unset all_proxy
  unset http_proxy
  unset https_proxy
  unset no_proxy
  gsettings set org.gnome.system.proxy mode 'none';
}
alias on="proxy_on"
alias off="proxy_off"
alias fq="on && cla"
### NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
