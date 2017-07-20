# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="willgarcia"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git enhancd zsh-peco-history osx nmap docker docker-compose colored-man-pages cask brew)

# User configuration

export PATH="/opt/puppetlabs/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_dsa.pub"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

CDPATH=.:~:~/Workspace/*

# enhancd
#ENHANCD_FILTER=~/Workspace/:peco; export ENHANCD_FILTER
#source "/Users/wgarcia/.enhancd/init.sh"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"


set_prompt (){
red="\[\033[38;5;1m\]"
green="\[\033[38;5;10m\]"
yellow="\[\033[38;5;11m\]"
grape="\[\033[38;5;92m\]"
strawberry="\[\033[38;5;9m\]"
mellon="\[\033[38;5;162m\]"
name="$red🍒$space$green🍏$space$red🍓$space$color4"
host="$color3\h$color4"
path="$color5\w$color4"
reset="\[\e[0m\]"
blink="\[\e[5;33m\]"
symbol[0]="$red🍒 $reset"
symbol[1]="$green🍏 $reset"
symbol[2]="$strawberry🍓 $reset"
symbol[3]="$grape🍇 $reset"
symbol[4]="$mellon🍉 $reset"
n1=$(($RANDOM%5))
n2=$(($RANDOM%5))
n3=$(($RANDOM%5))
win=0
winst=""
if ((($n1==$n2) || ($n1==$n3) || ($n2==$n3)));
then
  win=10;
CASH=$(($CASH+$win))
    winst=" $yellow⭐$reset"
fi

if ((($n1==$n2) && ($n1==$n3)));
  then
        win=$((100*($n1+1)));
	    CASH=$(($CASH+$win))
	        winst=" $yellow🌟 $win🌟 $reset"
	fi


	CASH=$(($CASH-10))
	PS1="[${symbol[$n1]}${symbol[$n2]}${symbol[$n3]}]$winst $green💵 $reset:$yellow$CASH$reset $yellow📂 $path ⏩ $reset"
}
CASH=1000
PROMPT_COMMAND='set_prompt'
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
