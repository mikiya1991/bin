alias vi="gvim"
export PATH=$PATH:~/bin
export TERM=xterm
export TERMINFO=/lib/terminfo
alias rrepo="repo init -u ssh://anakin_wang@pcbugit2.realsil.com.cn:29418/rlxlinux/manifest.git"
alias understand="sh ~/bin/scitools/bin/linux64/understand"
alias sudo="sudo "
EDITOR=gvim
BOARD_IP=10.0.2.111

function rftp() {
    if [ $# -ge 2 ]
    then
        echo -e "binary\n put $1\n exit" | tftp $2
    fi
    if [ $# -eq 1 ]
    then
        echo -e "binary\n put $1\n exit" | tftp ${BOARD_IP}
    else
        echo -e "binary\n put linux.bin\n exit" | tftp ${BOARD_IP}
    fi
}

