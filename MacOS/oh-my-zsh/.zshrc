### *
### | ╺━┓┏━┓╻ ╻   ┏━┓┏━╸    | ZSH + Oh-My-Zsh on MacOS/ITerm2
### | ┏━┛┗━┓┣━┫   ┣┳┛┃      |              - * -
### | ┗━╸┗━┛╹ ╹   ╹┗╸┗━╸    | KawaiiPantsu (github)
### | The terminal is home! | https://github.com/kawaiipantsu
### `-----------------------+---------------------------------
# 
# Made a more complete and dynamic .zshrc file that now allows
# you to become even a better shell wizard and use your magic
# cli-online-fuu on your creativity :) No, honestly, i just
# made sure that the file is a bit more easy going on your
# system if some of the things are missing, so you can use
# this file right away even if you don't have Oh-My-Zsh or
# tmux or themes setup.
#
# The sections is trying to follow the flow !
#
# 1) Global     - Settings
# 2) Zsh        - Settings / Aliases
# 3) ITerm2     - Integration Settings/Activation
# 4) Oh-My-Zsh  - Settings
# 5) Oh-My-Zsh  - Theme Activation
# 6) Shell      - Terminal Functions
# 7) TMUX       - Settings
# 8) TMUX       - Activation
#

### *
### | Global - Settings
### `---------------------------------------------------------
export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export TMUX_AUTOSTART=false
export EDITOR="vim"
export DEFAULT_USER=$USER



### *
### | Zsh - Settings / Aliases
### `---------------------------------------------------------
# History tweaking!
export HISTFILE=$HOME/.zsh_history
export HISTFILESIZE=2000000
export HISTSIZE=4000
export HIST_STAMPS="%d-%m-%Y %T"
#setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS

# Aliases - zsh
alias zsh_update="brew install zsh"
alias zsh_update_all="brew install zsh && omz update"
alias zsh_version="zsh --version|awk '{print $2}'"
# Aliases - Personal
alias code="open -a 'Visual Studio Code'"
alias edit="open -t"
alias itunes="itunes_begin"
alias itunes_late="itunes_late"
alias itunes_play="osascript -s s -e 'tell application \"iTunes\" to play'"
alias itunes_stop="osascript -s s -e 'tell application \"iTunes\" to stop'"
alias itunes_next="osascript -s s -e 'tell application \"iTunes\" to next track'"
alias itunes_prev="osascript -s s -e 'tell application \"iTunes\" to previous track'"
alias myip="curl -s -q 'https://api.buffer.dk/myip' -o - | jsonpp | egrep '(ip|dns)' | awk '{print $1$2}' | sed 's/\"//g' | sed 's/,//g' | awk -F':' '{print $1$2}'"
# Aliases - Docker alias
alias dkps="docker ps"
alias dkst="docker stats"
alias dkpsa="docker ps -a"
alias dkimgs="docker images"
alias dkcpup="docker-compose up -d"
alias dkcpdown="docker-compose down"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"
# Aliases - Kubectl alias
alias kdev='kubectl -n dev'
alias kpg='kubectl -n playground'
alias ktest='kubectl -n test'
alias kprod='kubectl -n prod'
alias kpreprod='kubectl -n preprod'



### *
### | ITerm2 - Integration Settings/Activation
### `---------------------------------------------------------
if [ -f $HOME/.iterm2_shell_integration.zsh ]; then
  export ITERM2_SQUELCH_MARK=1
  source $HOME/.iterm2_shell_integration.zsh
fi



### *
### | Oh-My-Zsh - Settings
### `---------------------------------------------------------
export DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=14
export DISABLE_LS_COLORS="false"
export DISABLE_AUTO_TITLE="true"
export ENABLE_CORRECTION="false"
export COMPLETION_WAITING_DOTS="true"
export ZSH_TMUX_AUTOSTART='false'



### *
### | Oh-My-Zsh - Theme Activation
### `---------------------------------------------------------
if [ -d $ZSH ]; then
  # OMZ Theme: powerlevel10k now!
  ZSH_THEME="powerlevel10k/powerlevel10k"  
  # OMZ powerlevel9k compatability
  POWERLEVEL9K_MODE='nerdfont-complete'
  # OMZ Plugins
  plugins=(
    iterm2
    osx
    dircycle
    sudo
    git
    git-flow
    github
    docker
    brew
    history
    tmux   
    urltools
    zsh-autosuggestions
    zsh-history-substring-search
    zsh-syntax-highlighting
  )
  # Spin up Oh-MyZsh !
  if [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
    autoload -U compinit && compinit
  fi
fi



### *
### | Shell - Terminal Functions
### `---------------------------------------------------------
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# To make these to iTunes functions work you need to create two playlists
# - "All Work No Fun!"  ( This is my everyday work playlist, 3000+ songs )
# - "LoFi - Lit It Up!" ( What i chill to at then end of work day or late nite )

function itunes_begin {
  open -j -g -a 'iTunes'
  osascript >/dev/null \
<<EOF
tell application "iTunes"
  tell browser window 1
    set collapsed to true
  end tell 
  shuffle enabled = true
	shuffle mode = song
	play playlist "All Work No Fun!"
	if player state is paused then play
     
end tell
EOF
}

function itunes_late {
  open -j -g -a 'iTunes'
  osascript >/dev/null \
<<EOF
tell application "iTunes"
  tell browser window 1
    set collapsed to true
  end tell  
  shuffle enabled = true
	shuffle mode = song
	play playlist "LoFi - Lit It Up!"
	if player state is paused then play
end tell
EOF
}

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

function randomtitlejoke {
  jokes=(
  '1 + 1 = 10 :) You get it ?'
  'CAPS LOCK - Preventing Login Since 1980'
  'Bugs come in through open Windows'
  'Windows isnt a virus, viruses do something'
  'Mac users swear by their Mac, PC users swear at their PC'
  'If at first you dont succeed; call it version 1.0'
  'Beware of programmers that carry screwdrivers'
  'Im not anti-social; Im just not user friendly'
  'My attitude isnt bad. Its in beta'
  'Programmers are tools for converting caffeine into code'
  'Computers make very fast, very accurate mistakes'
  'Artificial intelligence usually beats real stupidity'
  'The truth is out there. Anybody got the URL?'
  'Penguins love cold, they wont survive the sun'
  )
  windowname ${jokes[$(( $RANDOM % ${#jokes[@]} + 1 ))]}
}

### *
### | TMUX - Settings
### `---------------------------------------------------------



### *
### | TMUX - Activation
### `---------------------------------------------------------
if [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ] && [[ "$TMUX_AUTOSTART" =~ true ]]; then
  windowname "TMUX It's lit!"
  tmux a -t default || exec tmux new -s default && exit;
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
if [ -f $HOME/.p10k.zsh ]; then
 source $HOME/.p10k.zsh
fi

# I enjoy a random joke in my Window-title now and then ...
# Don't really use it for anything anyways! Mostly use Tab-titles!
# Since iTerm remembers Window titles per Tab, i can have random jokes :)
randomtitlejoke

# New spawn, clean all titles
tabname "New Tab!"