if [ "$TERM" == "dumb" ]; then return 0; fi

export PROMPT_COMMAND="PS1='\[\e]0;\u@\h: \w\a\]\[\033[1;33m\]\u\[\033[1;37m\]@\[\033[1;32m\]\h\[\033[1;37m\]:\[\033[1;31m\]\w \n\[\033[1;36m\]$ \[\033[0m\]'"
