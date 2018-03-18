##############################################################
### ╺━┓┏━┓╻ ╻   ┏━┓┏━╸  | Zshrc - MacOS
### ┏━┛┗━┓┣━┫   ┣┳┛┃    | 
### ┗━╸┗━┛╹ ╹   ╹┗╸┗━╸  | KawaiiPantsu (github)
##############################################################

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/dbl/.oh-my-zsh
# export LANG=en_US.UTF-8
# export SSH_KEY_PATH="~/.ssh/rsa_id"

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

DEFAULT_USER="dbl"

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=7

# DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd-mm-yyyy"

# Plugins we want to load
plugins=(
  sudo
  git
  history
  taskwarrior
  tmux
  tmuxinator
  jira
  git-flow
  chucknorris
  osx
  urltools
  web-search
  zsh-autosuggestions
)

# Startup Oh-My-Zsh
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

## Special functions to rename iTerm2 "tab name" or "main title"

function tabname {
  if [ -z $TMUX ] ; then
    printf "\e]1;$@\a"
  else
   tmux rename-window $@
  fi
}

function windowname {
  if [ -z $TMUX ] ; then
    printf "\e]2;$@\a"
  else
   tmux rename-window $@
  fi
}

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'
