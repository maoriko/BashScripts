#!/bin/bash
# Script to extract files
# Kiewicz
# GPL - 2011
 
 
 if [ "$#" -lt 1 ]; then
        echo -ne "\n\tUsage:"
        echo -e "\n\t$(basename $0) <file> (.tar, .rar, .bz2...)"
        echo ""
        exit 1
fi
 
 if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2 | *.tbz2)   tar xvjf $1        ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xvf $1        ;;
            *.tgz)       tar xvzf $1       ;;
            *.zip)       unzip $1     ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted" ;;
         esac
    else
        echo "'$1' is not a valid parameter"
    fi