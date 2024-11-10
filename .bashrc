# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

if [[ $0 == -* ]]; then
    clear -x
    echo -e "Welcome \e[0;38;5;34m$(whoami)\e[0;2m@\e[0;38;5;39m$(hostname)\e[0m 🙂"
    printf '\e[2m%*s\e[0m\n' "$(tput cols)" '' | sed 's/ /━/g'
    echo -e "🖥️ \e[32mSystem:\e[0;38;5;85m $(awk -F= '/^PRETTY_NAME/{print $2}' /etc/os-release | tr -d '"')\e[0m,\e[38;5;39m Kernel $(awk '{print $3}' /proc/version)\e[2m #$(awk -F'#' '{print $2}' /proc/versin | sed 's/^ *//')\e[0m"
    echo -e "⚡ \e[32mCPU:\e[0m \e[0;38;5;85m$(grep -m 1 'model name' /proc/cpuinfo | awk -F': ' '{print $2}')\e[0m with \e[0;38;5;39m$(grep -c '^processor' /proc/cpuinfo) cores\e[0m @ \e[0;38;5;214m$(grep -m 1 'cpu MHz' /proc/cpuinfo | awk '{printf "%.2f GHz", $4 / 1000}')\e[0m"
    echo -e "🧮 \e[32mRAM:\e[0m \e[0;38;5;85m$(awk '/MemTotal/ {total=$2} /MemAvailable/ {available=$2} END {used=total-available; printf "%.1fG", used/1024/1024}' /proc/meminfo)\e[0m / \e[0;38;5;39m$(awk '/MeTotal/ {printf "%.1fG", $2/1024/1024}' /proc/meminfo)\e[0m"
    echo -e "🗂️ \e[32mDisk: $(df -Th -x tmpfs -x devtmpfs | awk 'NR>1 {print "\\e[0;38;5;39m" $1 "\\e[0;2m:\\e[38;5;39m" $2 "\\e[0;2m -> \\e[0;32m" $7 " \\e[0;2m[\\e[0;38;5;202m" $4 "\\e[0;2m / \\e[0;38;5;196m $3 "\\e[0;2m] \\e[0;38;5;214m" $6}' | sed ':a;N;$!ba;s/\n/\n      /g')\e[0m"
    echo -e "🕒 \e[32mUptime:\e[0m $(uptime -p)\e[0m"
    echo -e "📊 \e[32mLoad Avg: \e[38;5;154m$(awk '{print $1}' /proc/loadavg)\e[0m \e[38;5;113m$(awk '{print $2}' /proc/loadavg)\e[0m \e[38;5;29m$(awk '{print $3}' /proc/loadavg)\e[0m"
    echo -e "🌐 \e[32mIP Addresses: \e[0;4m$(hostname -I | awk '{$1=$1; print}' OFS='\\e[0;2m, \\e[0;4m')\e[0m"
    echo -e "🌍 \e[32mDNS: \e[0;4m$(grep -oP 'nameserver \K.*' /etc/resolv.conf | awk '{$1=$1; print}' OFS='\\e[0;2m, \\e[0;4m')\e[0m"
    printf '\e[2m%*s\e[0m\n' "$(tput cols)" '' | sed 's/ /━/g'
fi


HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

PS1='\[\e[2m\][\[\e[0m\]\t\[\e[0;2m\]]\[\e[0;38;5;34m\]\u\[\e[0;2m\]@\[\e[0;38;5;39m\]\h\[\e[0;2m\]:\[\e[0m\]\w\[\e[1;2m\]\$\[\e[0m\] '
PS1="\[\e]0;\u@\h: \w\a\]$PS1"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

#GRC Colors
GRC="$(which grc)"
if tty -s && [ -n "$TERM" ] && [ "$TERM" != dumb ] && [ -n "$GRC" ]; then
    alias colourify="$GRC -es"
    alias blkid='colourify blkid'
    alias configure='colourify ./configure'
    alias df='colourify df'
    alias diff='colourify diff'
    alias docker='colourify docker'
    alias docker-compose='colourify docker-compose'
    alias docker-machine='colourify docker-machine'
    alias du='colourify du'
#    alias env='colourify env'
    alias free='colourify free'
    alias fdisk='colourify fdisk'
    alias findmnt='colourify findmnt'
    alias make='colourify make'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias id='colourify id'
    alias ip='colourify ip'
    alias iptables='colourify iptables'
    alias as='colourify as'
    alias gas='colourify gas'
    alias journalctl='colourify journalctl'
    alias kubectl='colourify kubectl'
    alias ld='colourify ld'
#   alias ls='colourify ls'
    alias lsof='colourify lsof'
    alias lsblk='colourify lsblk'
    alias lspci='colourify lspci'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias ss='colourify ss'
    alias traceroute='colourify traceroute'
    alias traceroute6='colourify traceroute6'
    alias head='colourify head'
    alias tail='colourify tail'
    alias dig='colourify dig'
    alias mount='colourify mount'
    alias ps='colourify ps'
    alias mtr='colourify mtr'
    alias semanage='colourify semanage'
    alias getsebool='colourify getsebool'
    alias ifconfig='colourify ifconfig'
    alias sockstat='colourify sockstat'
fi

# bashrc
alias bashrc='. ~/.bashrc'
alias vibashrc='vi ~/.bashrc'

# Misc
alias quit="exit"
alias c='clear'
alias less='less -cRS -# 4'
alias cgrep="grep --color=always"
alias svi='sudo vi'

# Apt
if [ "$(id -u)" -ne 0 ]; then
  alias apt='sudo apt'
fi
alias aptu='apt update'
alias apti='apt install'
alias aptui='apt update && apt install'

# History
alias h='history'
alias hgrep='history | grep'
alias hless='history | less'

# Sysadmin
alias most='du -hsx * | sort -rh | head -10'
alias psa='ps aux'

# ls
alias ls='ls --color=auto'
alias ll='ls -l'
alias lll='ls --color=always -la | less'
alias l='ls -lA'
alias la='ls -la'

# cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'

# Docker
alias d='docker'
alias drun='d run --rm -it'
alias dcat='drun -a stdout --entrypoint cat'
alias ds='d system'
alias ddf='ds df'
alias dprune='ds prune'
alias di='d image'
alias dls='di ls'
alias dps='d ps'

# Docker compose
alias dc='d compose'
alias dcup='dc up -d --build'
alias dcdown='dc down --remove-orphans'
alias dcps='dc ps'
alias dcrun='dc run'
alias dclogs='dc logs -f'
alias dce='dc exec'
dcebash() { dce $1 bash; }
dcesh() { dce $1 sh; }

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
