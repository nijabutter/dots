export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export FTP_PASS="EHEq2KN!F"
if [ "$(tty)" = "/dev/tty1" ]; then
	startx
fi


# Path to your oh-my-zsh installation.
export ZSH="/home/rb/.oh-my-zsh"
export ZSH_CUSTOM="/home/rb/.zsh"
ZSH_THEME="custom"

# ZSH autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history)

ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
	git
	colorize 
	colored-man-pages 
	pip 
	sudo  
	zsh-autosuggestions 
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR='nvim'

# aliases
alias ls='exa --icons --color=auto --group-directories-first'
alias cat='bat'
alias open='xdg-open'
alias vim='nvim'
alias py="python3"
alias ytdl="youtube-dl"
alias hex="hexdump -C"
alias cls="clear"
alias ka='killall'
# Dirs
alias ...="../.."
alias ....="../../../"
# Git
alias add="git add"
alias commit="git commit -m"
# Pacman
alias install='sudo pacman -S'
alias remove='sudo pacman -R'
alias update='sudo pacman -Syu --noconfirm'
alias sp='sudo pacman'
# Scripts
alias colortest='$HOME/.scripts/colortest.sh'
# Get Public IP
alias getip="curl -s https://myexternalip.com/raw"
