# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

ascii_char() {
  local char="${1,,}"
  case "$char" in
    a) echo "       "; echo "       "; echo "  __ _ "; echo " / _\` |"; echo "| (_| |"; echo " \\__,_|"; echo "       "; echo "       "; ;;
    b) echo " _     "; echo "| |    "; echo "| |__  "; echo "| '_ \\ "; echo "| |_) |"; echo "|_.__/ "; echo "       "; echo "       "; ;;
    c) echo "      "; echo "      "; echo "  ___ "; echo " / __|"; echo "| (__ "; echo " \\___|"; echo "      "; echo "      "; ;;
    d) echo "     _ "; echo "    | |"; echo "  __| |"; echo " / _\` |"; echo "| (_| |"; echo " \\__,_|"; echo "       "; echo "       "; ;;
    e) echo "      "; echo "      "; echo "  ___ "; echo " / _ \\"; echo "|  __/"; echo " \\___|"; echo "      "; echo "      "; ;;
    f) echo "  __ "; echo " / _|"; echo "| |_ "; echo "|  _|"; echo "| |  "; echo "|_|  "; echo "     "; echo "     "; ;;
    g) echo "       "; echo "       "; echo "  __ _ "; echo " / _\` |"; echo "| (_| |"; echo " \\__, |"; echo "  __/ |"; echo " |___/ "; ;;
    h) echo " _     "; echo "| |    "; echo "| |__  "; echo "| '_ \\ "; echo "| | | |"; echo "|_| |_|"; echo "       "; echo "       "; ;;
    i) echo " _ "; echo "(_)"; echo " _ "; echo "| |"; echo "| |"; echo "|_|"; echo "   "; echo "   "; ;;
    j) echo "   _ "; echo "  (_)"; echo "   _ "; echo "  | |"; echo "  | |"; echo "  | |"; echo " _/ |"; echo "|__/ "; ;;
    k) echo " _    "; echo "| |   "; echo "| | __"; echo "| |/ /"; echo "|   < "; echo "|_|\\_\\"; echo "      "; echo "      "; ;;
    l) echo " _ "; echo "| |"; echo "| |"; echo "| |"; echo "| |"; echo "|_|"; echo "   "; echo "   "; ;;
    m) echo "           "; echo "           "; echo " _ __ ___  "; echo "| '_ \` _ \\ "; echo "| | | | | |"; echo "|_| |_| |_|"; echo "           "; echo "           "; ;;
    n) echo "       "; echo "       "; echo " _ __  "; echo "| '_ \\ "; echo "| | | |"; echo "|_| |_|"; echo "       "; echo "       "; ;;
    o) echo "       "; echo "       "; echo "  ___  "; echo " / _ \\ "; echo "| (_) |"; echo " \\___/ "; echo "       "; echo "       "; ;;
    p) echo "       "; echo "       "; echo " _ __  "; echo "| '_ \\ "; echo "| |_) |"; echo "| .__/ "; echo "| |    "; echo "|_|    "; ;;
    q) echo "       "; echo "       "; echo "  __ _ "; echo " / _\` |"; echo "| (_| |"; echo " \\__, |"; echo "    | |"; echo "    |_|"; ;;
    r) echo "      "; echo "      "; echo " _ __ "; echo "| '__|"; echo "| |   "; echo "|_|   "; echo "      "; echo "      "; ;;
    s) echo "     "; echo "     "; echo " ___ "; echo "/ __|"; echo "\\__ \\"; echo "|___/"; echo "     "; echo "     "; ;;
    t) echo " _   "; echo "| |  "; echo "| |_ "; echo "| __|"; echo "| |_ "; echo " \\__|"; echo "     "; echo "     "; ;;
    u) echo "       "; echo "       "; echo " _   _ "; echo "| | | |"; echo "| |_| |"; echo " \\__,_|"; echo "       "; echo "       "; ;;
    v) echo "       "; echo "       "; echo "__   __"; echo "\\ \\ / /"; echo " \\ V / "; echo "  \\_/  "; echo "       "; echo "       "; ;;
    w) echo "          "; echo "          "; echo "__      __"; echo "\\ \\ /\\ / /"; echo " \\ V  V / "; echo "  \\_/\\_/  "; echo "          "; echo "          "; ;;
    x) echo "      "; echo "      "; echo "__  __"; echo "\\ \\/ /"; echo " >  < "; echo "/_/\\_\\"; echo "      "; echo "      "; ;;
    y) echo "       "; echo "       "; echo " _   _ "; echo "| | | |"; echo "| |_| |"; echo " \\__, |"; echo "  __/ |"; echo " |___/ "; ;;
    z) echo "     "; echo "     "; echo " ____"; echo "|_  /"; echo " / / "; echo "/___|"; echo "     "; echo "     "; ;;
    -) echo "        "; echo "        "; echo " ______ "; echo "|______|"; echo "        "; echo "        "; echo "        "; echo "        "; ;;
    .) echo "   "; echo "   "; echo "   "; echo "   "; echo " _ "; echo "(_)"; echo "   "; echo "   "; ;;
    0) echo "  ___  "; echo " / _ \\ "; echo "| | | |"; echo "| | | |"; echo "| |_| |"; echo " \\___/ "; echo "       "; echo "       "; ;;
    1) echo " __ "; echo "/_ |"; echo " | |"; echo " | |"; echo " | |"; echo " |_|"; echo "    "; echo "    "; ;;
    2) echo " ___  "; echo "|__ \\ "; echo "   ) |"; echo "  / / "; echo " / /_ "; echo "|____|"; echo "      "; echo "      "; ;;
    3) echo " ____  "; echo "|___ \\ "; echo "  __) |"; echo " |__ < "; echo " ___) |"; echo "|____/ "; echo "       "; echo "       "; ;;
    4) echo " _  _   "; echo "| || |  "; echo "| || |_ "; echo "|__   _|"; echo "   | |  "; echo "   |_|  "; echo "        "; echo "        "; ;;
    5) echo " _____ "; echo "| ____|"; echo "| |__  "; echo "|___ \\ "; echo " ___) |"; echo "|____/ "; echo "       "; echo "       "; ;;
    6) echo "   __  "; echo "  / /  "; echo " / /_  "; echo "| '_ \\ "; echo "| (_) |"; echo " \\___/ "; echo "       "; echo "       "; ;;
    7) echo " ______ "; echo "|____  |"; echo "    / / "; echo "   / /  "; echo "  / /   "; echo " /_/    "; echo "        "; echo "        "; ;;
    8) echo "  ___  "; echo " / _ \\ "; echo "| (_) |"; echo " > _ < "; echo "| (_) |"; echo " \\___/ "; echo "       "; echo "       "; ;;
    9) echo "  ___  "; echo " / _ \\ "; echo "| (_) |"; echo " \\__, |"; echo "   / / "; echo "  /_/  "; echo "       "; echo "       "; ;;
    *) echo "?"; echo "?"; echo "?"; echo "?"; echo "?"; echo "?"; echo "?"; echo "?"; ;;
  esac
}

print_line() {
    printf '\e[0;2m%*s\e[0m\n' "$(tput cols)" '' | sed 's/ /━/g'
}
print_ascii() {
    local chars=($(echo "$1" | fold -w1))
    for i in {1..8}; do
        line=""
        for char in "${chars[@]}"; do
            line+=$(ascii_char "$char" | sed -n "${i}p")" "
        done
        echo "$line"
    done
}

print_ascii_truncate() {
    local term_width=$(tput cols)
    local chars=($(echo "$1" | fold -w1))
    local total_width=0
    local max_chars=0
    local widths=()

    # Compute widths
    for char in "${chars[@]}"; do
        local char_width=$(ascii_char "$char" | awk '{print length}' | sort -nr | head -n1)
        widths+=("$char_width")
        (( total_width += char_width + 2 ))  # Ajout de l'espacement entre caractères

        if (( total_width > term_width )); then
            break
        fi

        (( max_chars++ ))
    done

    chars=("${chars[@]:0:max_chars}")
    widths=("${widths[@]:0:max_chars}")

    # Display
    for i in {1..8}; do
        line=""
        for index in "${!chars[@]}"; do
            local char="${chars[$index]}"
            local ascii_line=$(ascii_char "$char" | sed -n "${i}p")
            line+="$ascii_line "
        done
        echo "$line"
    done
}


hash_color() {
    local COLORS=(
      28 34 41 47 49 76  # 70 vert
      21 39 33 27 45 51 75  # bleu
      57 92 99 129 183 207  # 170 violet
      172 178 184 191 220 227  # 142 jaune
    )
    local hash=$(echo -n "$1" | cksum | awk '{print $1}')
    echo -n "${COLORS[hash % ${#COLORS[@]}]}"
}


export HOST_COLOR=$(hash_color $HOSTNAME)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export EDITOR=vim

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

username_color() {
    if [ "$UID" -eq 0 ]; then
        echo -n "\[\e[0;38;5;1m\]"
    else
        echo -n "\[\e[0;38;5;34m\]"
    fi
}

PS1='\[\e[2m\][\[\e[0m\]\t\[\e[0;2m\]]'"$(username_color)"'\u\[\e[0;2m\]@\[\e[0;38;5;'"$(hash_color $HOSTNAME)"'m\]\h\[\e[0;2m\]:\[\e[0m\]\w\[\e[1;2m\]\$\[\e[0m\] '
PS1="\[\e]0;\u@\h: \w\a\]$PS1" # window title

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
alias vibashrc='$EDITOR ~/.bashrc'

# Misc
alias quit="exit"
alias c='clear'
alias less='less -cRS -# 4'
alias cgrep="grep --color=always"
alias svi='sudo vi'
alias mux='tmux new-session -A'
alias colors='for i in {0..255}; do printf "\e[48;5;${i}m\e[38;5;15m  %03d  \e[0m " $i; if (( (i + 1) % 16 == 0 )); then echo; fi; done'

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

# Kubernetes
alias k='kubectl'
alias kg='k get'
alias kgpod='kg pod'
alias kgservice='kg services'
alias kgservices='kg services'
alias kdes='k describe'
alias kdespod='kdes pod'
alias kcp='k cp'
alias klog='k logs -f'
alias ka='k apply -f'
alias kdel='k delete -f'
alias kexec='k exec -it'

# file backup
bak() {
    if [[ -e "$1" ]]; then  # Vérifie si le fichier, dossier ou symlink existe
        if [[ -f "$1" || -L "$1" ]]; then  # Vérifie si c'est un fichier régulier ou un symlink
            cp --preserve=all "$1" "$1.bak"
            echo "Backup created: $1.bak"
        elif [[ -d "$1" ]]; then
            cp -r --preserve=all "$1" "$1.bak"
            echo "Backup of directory created: $1.bak/"
        else
            echo "Error: \"$1\" is neither a valid file, symlink, nor directory."
        fi
    else
        echo "Error: \"$1\" does not exist."
    fi
}

# copy to clipboard
clip() {
    echo -n "$(cat)" | base64 | \
    echo -e "\033]52;p;$(cat)$(base64)\007"
}
# paste from clipboard to file
alias paste='cat >'

# update
updateconf() {
    wget -q -O ~/.bashrc https://raw.githubusercontent.com/vincentbab/cli/refs/heads/main/.bashrc
    wget -q -O ~/.vimrc https://raw.githubusercontent.com/vincentbab/cli/refs/heads/main/.vimrc
    wget -q -O ~/.tmux.conf https://raw.githubusercontent.com/vincentbab/cli/refs/heads/main/.tmux.conf
}

# load bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# load bash completions
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ -z "$NO_TMUX" ] && [ "$TERM_PROGRAM" != "vscode" ]; then
    tmux has-session && exec tmux attach || exec tmux
    return
fi

# Welcome message
if [[ $0 == -* ]]; then
    clear -x
    printf "\e[0;38;5;${HOST_COLOR}m"
    print_ascii_truncate $HOSTNAME
    print_line
    echo -e "🖥️ \e[0;38;5;${HOST_COLOR}mSystem:\e[0;38;5;85m $(awk -F= '/^PRETTY_NAME/{print $2}' /etc/os-release | tr -d '"')\e[0m,\e[38;5;39m Kernel $(awk '{print $3}' /proc/version)\e[2m #$(awk -F'#' '{print $2}' /proc/version | sed 's/^ *//')\e[0m"
    echo -e "⚡ \e[0;38;5;${HOST_COLOR}mCPU:\e[0m \e[0;38;5;85m$(grep -m 1 'model name' /proc/cpuinfo | awk -F': ' '{print $2}')\e[0m with \e[0;38;5;39m$(grep -c '^processor' /proc/cpuinfo) cores\e[0m @ \e[0;38;5;214m$(grep -m 1 'cpu MHz' /proc/cpuinfo | awk '{printf "%.2f GHz", $4 / 1000}')\e[0m"
    echo -e "🧮 \e[0;38;5;${HOST_COLOR}mRAM:\e[0m \e[0;38;5;85m$(awk '/MemTotal/ {total=$2} /MemAvailable/ {available=$2} END {used=total-available; printf "%.1fG", used/1024/1024}' /proc/meminfo)\e[0m / \e[0;38;5;39m$(awk '/MemTotal/ {printf "%.1fG", $2/1024/1024}' /proc/meminfo)\e[0m"
    echo -e "💽 \e[0;38;5;${HOST_COLOR}mDisk: $(df -Th -x tmpfs -x devtmpfs -x overlay | awk 'NR>1 {print "\\e[0;38;5;39m" $1 "\\e[0;2m:\\e[38;5;39m" $2 "\\e[0;2m -> \\e[0;32m" $7 " \\e[0;2m[\\e[0;38;5;202m" $4 "\\e[0;2m / \\e[0;38;5;196m" $3 "\\e[0;2m] \\e[0;38;5;214m" $6}' | sed ':a;N;$!ba;s/\n/\n         /g')\e[0m"
    echo -e "🕒 \e[0;38;5;${HOST_COLOR}mUptime:\e[0m $(uptime -p)\e[0m"
    echo -e "📊 \e[0;38;5;${HOST_COLOR}mLoad Avg: \e[38;5;154m$(awk '{print $1}' /proc/loadavg)\e[0m \e[38;5;113m$(awk '{print $2}' /proc/loadavg)\e[0m \e[38;5;29m$(awk '{print $3}' /proc/loadavg)\e[0m"
    echo -e "🌐 \e[0;38;5;${HOST_COLOR}mIP Addresses: \e[0;4m$(hostname -I | awk '{$1=$1; print}' OFS='\\e[0;2m, \\e[0;4m')\e[0m"
    echo -e "🌍 \e[0;38;5;${HOST_COLOR}mDNS: \e[0;4m$(grep -oP 'nameserver \K.*' /etc/resolv.conf | tr '\n' ' ' | awk '{$1=$1; print}' OFS='\\e[0;2m, \\e[0;4m')\e[0m"
    print_line
fi
