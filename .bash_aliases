# alias use-gcc9='export PATH=/home/namdhay/ws/toolchain/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH'

alias l="ls"
alias la="ls -a"
alias ll="ls -alhF"
alias lsd='ls -l | grep "^d"'

alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -pv'

alias edbash="vi ~/.bashrc"
alias edvim="vi ~/.vimrc"
alias edtmux="vi ~/.tmux.conf"
alias edalias="vi ~/.bash_aliases"
alias edpath="vi ~/.vimrc.path"
alias edplug="vi ~/.vimrc.plug"

alias cdu="cd ~/ws/mfg_diag/u-boot"
alias cds="cd ~/ws/scm3000mgx"
alias cdb="cd ~/ws/barcli"

alias reload_bash="source ~/.bashrc"
alias reload_tmux="tmux source-file ~/.tmux.conf"

# alias v="$HOME/local/bin/vim"
# alias vi="$HOME/local/bin/vim"
# alias vim="$HOME/local/bin/vim"

alias fzf="fzf --preview 'bat --style=numbers --color=always --theme=Dracula --line-range :500 {}'"
