if [ "$TERM" == "dumb" ]; then return 0; fi

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias dir='ls -lah'
alias ll='ls -lh --color=auto'
alias ls='ls --color=auto'
alias cls='clear'
alias c='clear'

alias df='df -h'
alias du='du -h'
alias grep='grep --color'
alias diskusage='du -h --max-depth=1 2> /dev/null | sort -n'
alias which='type -all'
alias path='echo -e ${PATH//:/\\n}'
alias sha1='openssl sha1'
alias diff='colordiff'
alias showmount='mount | column -t'
alias now='date +"%t'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias ~="cd ~"

alias myip='wget -q -O - http://checkip.dyndns.org | sed -n "s/^.*Address:\s\(.*\)<\/body>.*$/\1/p"'
alias myip6='wget -q -O - http://checkipv6.dyndns.org | sed -n "s/^.*Address:\s\(.*\)<\/body>.*$/\1/p"'
alias ping='ping -c 4'
alias fastping='ping -c 100 -s.2'
alias http-header='wget -qO- --server-response --spider'

if [ $(id -u) -ne 0 ]; then
  alias ports='netstat -tulanpw'
  alias lsock='/usr/bin/lsof -i -P'
  alias lsockU='/usr/bin/lsof -nP | grep UDP'
  alias lsockT='/usr/bin/lsof -nP | grep TCP'
  alias openPorts='/usr/bin/lsof -i | grep LISTEN'
else
  alias ports='sudo netstat -tulanpw'
  alias lsock='sudo /usr/bin/lsof -i -P'
  alias lsockU='sudo /usr/bin/lsof -nP | grep UDP'
  alias lsockT='sudo /usr/bin/lsof -nP | grep TCP'
  alias openPorts='sudo /usr/bin/lsof -i | grep LISTEN'
fi

################################################################

if [ -f /etc/redhat-release ] ; then
    if [ $(id -u) -ne 0 ]; then
        alias reboot='sudo /sbin/reboot'
        alias yum='sudo yum'
        alias update='sudo yum -y upgrade;sudo yum -y autoremove'
    else
        alias update='sudo yum -y upgrade;yum -y autoremove'
    fi
fi

if [ -f /etc/debian_version ] ; then
    if [ $(id -u) -ne 0 ]; then
        alias reboot='sudo /sbin/reboot'
        alias apt-get='sudo apt'
        alias apt='sudo apt'
        alias update='sudo apt update;sudo apt full-upgrade -y;sudo apt autoclean -y;sudo apt autoremove -y'
    else
        alias apt-get='apt'
        alias update='apt update;apt full-upgrade -y;apt autoclean -y;apt autoremove -y'
    fi
fi
