# ----------------------------------------------------
# file:     $HOME/dotfiles/zshenv
# author    jls - http://sjorssparreboom.nl
# vim:nu:ai:si:et:ts=4:sw=4:fdm=indent:fdn=1:ft=zsh:
# ----------------------------------------------------

# Point Zsh at the right dotfiles
# ----------------------------------------------------
ZDOTDIR="${ZDOTDIR:-$HOME/.zsh}"

# Setup environment
# ----------------------------------------------------
export LC_ALL=
export LC_COLLATE="C"
export LC_CTYPE=$LANG
export LESS="FX"
export PERL_SIGNALS="unsafe"
export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/chromium"
export FCEDIT="$EDITOR"
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export TERM="xterm-termite"
export GPG_TTY=$(tty)
export GPGKEY="E7AB0A9A"
export GPG_AGENT_INFO="$HOME/.gnupg/S.gpg-agent"
export GRADLE_HOME="$HOME/documents/code/gradle"
export COMPOSER_HOME="$HOME/.composer/vendor/bin"
export ANDROID_HOME="/opt/android-sdk"
export PAGER="/usr/bin/less"
export SDCV_PAGER="/usr/bin/less"
export SYSTEMD_PAGER="less -j4aR"
export PASS_DIR="$HOME/sync/pass"
export PATH="$PATH:$ANDROID_HOME"
export PATH="$PATH:$GRADLE_HOME"
export PATH="$PATH:$COMPOSER_HOME"

# setup default dirs
# ----------------------------------------------------
[[ $XDG_CACHE_HOME ]] || export XDG_CACHE_HOME="$HOME/.cache"
[[ $XDG_CONFIG_HOME ]] || export XDG_CONFIG_HOME="$HOME/.config"
[[ $XDG_DATA_HOME ]] || export XDG_DATA_HOME="$HOME/.local/share"

# Man page colours
# ----------------------------------------------------
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;35m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;30;03;36m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;34m'

export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 3) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

# Linux console colours
# ----------------------------------------------------
# if [ "$TERM" = "linux" ]; then
#     echo -en "\e]P0000000" #black
#     echo -en "\e]P85e5e5e" #darkgrey
#     echo -en "\e]P18a2f58" #darkred
#     echo -en "\e]P9cf4f88" #red
#     echo -en "\e]P2287373" #darkgreen
#     echo -en "\e]PA53a6a6" #green
#     echo -en "\e]P3914e89" #darkyellow
#     echo -en "\e]PBbf85cc" #yellow
#     echo -en "\e]P4395573" #darkblue
#     echo -en "\e]PC4779b3" #blue
#     echo -en "\e]P55e468c" #darkmagenta
#     echo -en "\e]PD7f62b3" #magenta
#     echo -en "\e]P62b7694" #darkcyan
#     echo -en "\e]PE47959e" #cyan
#     echo -en "\e]P7899ca1" #lightgrey
#     echo -en "\e]PFc0c0c0" #white
#     clear # bring us back to default input colours
# fi
#

if [ "$TERM" = "linux" ]; then
    /bin/echo -e "
    \e]P039474a
    \e]P1986345
    \e]P2788249
    \e]P39b6a46
    \e]P43e5951
    \e]P5b9924a
    \e]P65d796a
    \e]P7977d5e
    \e]P84c5f63
    \e]P9b07350
    \e]PA869151
    \e]PBaf6b42
    \e]PC567a6e
    \e]PDd69d55
    \e]PE668574
    \e]PFab9c71
    "
    # get rid of artifacts
    # ----------------------------------------------------
    clear
fi
