#
# ~/.config/fish/config/fish
#

# Thing for ST
tput smkx

# Check if running interactively
if ! status -i
    exit
end

# Aliases
alias ls='ls -l -h -a --color=auto --group-directories-first'
alias grep='grep -i --color'
alias cls='clear'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -P now'
alias please='sudo'
alias calc='bc'
alias fishrc='vim ~/.config/fish/config.fish'
alias calculator='bc'
alias py='python'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias fzf='fzf --color=fg:#dedede,bg:#041222,hl:#c43b5e --color=fg+:#dedede,bg+:#041222,hl+:#c43b5e --color=info:#485199,prompt:#1dcddd,pointer:#c43b5e --color=marker:#041222,spinner:#1dcddd,header:#485199'
alias scrots='scrot -s ~/Documents/scrot/%H:%M:%S::%Y-%m-%d.png'
alias felnet='telnet (cat ~/telnets.txt | fzf --color=fg:#dedede,bg:#041222,hl:#c43b5e --color=fg+:#dedede,bg+:#041222,hl+:#c43b5e --color=info:#485199,prompt:#1dcddd,pointer:#c43b5e --color=marker:#041222,spinner:#1dcddd,header:#485199)'
alias lsd='ls -l -h -a --color=auto --group-directories-first | lolcat'
alias vim='nvim'

export EDITOR=nvim
export VISUAL=nvim

# Standard terminal start
clear

#Run colorscript
if [ "$TERM_PROGRAM" != "vscode" ] && [ "$TERM_PROGRAM" != "kate" ] && [ "$TERM_PROGRAM" != "platformio-ide-terminal" ]
         colorscript random
end

#Path exports
export PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin:/usr/lib/llvm/12/bin:/opt/cuda/bin'
