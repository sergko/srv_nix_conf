# The following lines were added by compinstall
zstyle :compinstall filename '/home/su/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
#PROMPT
#PS1="%F{green}%n@%m %1~ %#"
#PS1="%B%F{blue}%n@%m %1~ %#"
#su@virtuoso srv_tech_puzzle %
#work
#PS1="%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%n@%m %1~ %#"
#%1~ - put only currdirectory
#%3~ - 3 directory
#%~ - put full path
PS1="%(?.%F{green}√.%F{red}?%?)%f %B%F{green}%n@%m%b %S%F{green}%~%s %B%#%b%f"
#right prompt
#RPROMPT='%*'
#√ zshfunctions %                    11:02:55


#Git Integration
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
#RPROMPT=\$vcs_info_msg_0_ %*
RPROMPT="\$vcs_info_msg_0_ %*"

zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git