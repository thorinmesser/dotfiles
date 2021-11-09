HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# for hyperzsh prompt in case I accidentally nuke it
# The prompt
#PROMPT='
#$(_user_host)$(_python_venv)%{$fg[white]%}%~ $(git_prompt_info)%{$reset_color%}$(git_prompt_status)${_return_status}'
#PROMPT+='
#%(?.%F{white}.%F{red})❯%f '
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}⌀ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▲ "
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}➜ "
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[yellow]○ "


setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char


# My own custom stuff down here...
# custom history stuff
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
setopt hist_ignore_all_dups

# Use less as the default pager, and -X to stop clearing on exit in
# an xterm i.e. makes it nice for GNUplot help! The -M gives more
# verbose info.
PAGER='less -X -M'

# Set architecture flags
export ARCHFLAGS="-arch x86_64"


# Git ssh stuff for VML bitbucket
export GIT_SSH_COMMAND="ssh -i ~/.ssh/bitbucket_rsa"

PATH=$PATH:~/Library/Python/2.7/bin
export PATH


# QMK
export QMK_HOME=/usr/local/src
