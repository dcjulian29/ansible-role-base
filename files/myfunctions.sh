if [ "$TERM" == "dumb" ]; then return 0; fi

mcd () { mkdir -p "$1" && cd "$1"; }
extract () {
    if [ -f $1 ]; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
ff () { /usr/bin/find . -name "$@" ; }
ffs () { /usr/bin/find . -name "$@"'*' ; }
ffe () { /usr/bin/find . -name '*'"$@" ; }

docker_clean_logs() {
  docker stop $1

  CACHE_LOG_PATH=$(docker inspect --format="{{.HostsPath}}" $1 | xargs dirname)
  CACHE_LOG="$CACHE_LOG_PATH/container-cached.log"

  truncate -s 0 $CACHE_LOG

  JSON_LOG=$(docker inspect --format="{{.HostsPath}}" $1 | xargs dirname)
  
  truncate -s 0 $JSON_LOG

  docker start $c
}
