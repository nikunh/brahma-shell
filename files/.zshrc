# Path to your oh-my-zsh installation.
#fc-cache -vf ~/.fonts/

export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship"
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='099'
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="↳ "
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time ram os_icon load ip aws)
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
alias colors_table='for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"'
# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git,ssh-agent,tmux,themes)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:~/bin"
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
export LANG=en_US.UTF-8

 #Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
   #export EDITOR='vim'
 #else
   #export EDITOR='vim'
 #fi
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

export VISUAL=vim
export EDITOR="$VISUAL"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$PATH:~/bin/:/usr/local/deployd/bin

export ANDROID_HOME=~/adt-bundle-mac-x86_64-20140702/sdk/
#PROMPT='%{$fg_bold[red]%}%n%{$fg_bold[white]%}@%M ${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} # % %{$reset_color%}'
export AWS_REGION=ap-southeast-1

#source "$HOME/.antigen/antigen.zsh"
#POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
#antigen use oh-my-zsh

#antigen apply

if [ -d "$HOME/.local/bin" ]; then
         PATH="$HOME/.local/bin:$PATH"
fi

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
        source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="2295420"

#ssh host autocompletion - use with "HashKnownHosts no" in .ssh/config
#zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {~/.ssh/sshcompletion}hosts(|0)(N) /dev/null)"}%%[# ]*}//,/ })'

zstyle -s ':completion:*:hosts' hosts _ssh_config
[[ -r ~/.ssh/config ]] && _ssh_config+=($(cat ~/.ssh/sshcompletion ))
zstyle ':completion:*:hosts' hosts $_ssh_config

#h=($(echo $(history | awk '{print $4 " " $5 "\n"}' | grep 'ssh ' | awk '{print $2}' | sort -u)))
#if [[ -r ~/.ssh/config ]]; then
#  h=($h ${${${(@M)${(f)"$(cat /home/nikun/.ssh/sshcompletion )"}:#Host *}#Host }:#*[*?]*})
#   IFS=$'\n' read -d '' -r -a h < /home/nikun/.ssh/sshcompletion
#fi

#if [[ -r ~/.ssh/sshcompletion]]; then
#  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/sshcompletion)"}:#Host *}#Host }:#*[*?]*})
#fi

#if [[ -r ~/.ssh/known_hosts ]]; then
#   h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
#fi
#echo "hosts are $h"
#if [[ $#h -gt 0 ]]; then
#  zstyle ':completion:*:ssh:*' hosts $h
#  zstyle ':completion:*:slogin:*' hosts $h
#fi

#Kompose autocompletion 
source <(kompose completion zsh)
source <(kubectl completion zsh)
