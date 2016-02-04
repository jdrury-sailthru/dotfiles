#~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
#alias ls='ls -GFh'
alias ls='pwd; ls -la --color=auto'

alias home='cd ~/gitdev/SocialFlow-Web'
alias builder='cd ~/gitdev/SocialFlow-Web/root/templates/javascript/ad_builder'
alias mobile='cd ~/gitdev/SocialFlow-Web/root/templates/javascript/mobile'
alias report='cd ~/gitdev/SocialFlow-Web/root/templates/javascript/report'
alias train='cd ~/gitdev/SocialFlow-Web/root/static/js/socialflow/admin/category-training'
alias settings='cd ~/gitdev/SocialFlow-Web/root/templates/javascript/settings'
alias css='cd ~/gitdev/SocialFlow-Web/root/static/scss/'
alias scripts='cd ~/gitdev/SocialFlow-Web/SocialFlow-Web-Config/lib/auto/share/dist/SocialFlow-Web-Config/etc/shared/controllers/'

alias sassy='cd ~/gitdev/SocialFlow-Web && sass --watch root/static/scss:root/static/css'

alias starman='cd ~/gitdev/SocialFlow-Web && export CATALYST_DEBUG=1 && SOCIALFLOW_WEB_PATH=/etc/socialflow/SocialFlow-Web-Config plackup -s Starman --port 4011 --workers 5 -e test app.psgi'
alias starman2='cd ~/gitdev/SocialFlow-Web && export CATALYST_DEBUG=1 && SOCIALFLOW_WEB_PATH=/etc/socialflow/SocialFlow-Web-Config plackup -s Starman --port 4012 --workers 5 -e test app.psgi'
#alias pstarman='cd ~/gitdev/SocialFlow-Web && export CATALYST_DEBUG=1 && export SOCIALFLOW_WEB_PATH=~/yml && SF_LOG_LEVEL=debug plackup -s Starman --port 4011 --workers 5 -e test app.psgi'
alias pstarman='cd ~/gitdev/SocialFlow-Web && CATALYST_DEBUG=1 SOCIALFLOW_WEB_PATH=~/yml SF_LOG_LEVEL=debug plackup -s Starman --port 4011 --workers 5 -e test app.psgi'

alias nstarman='cd ~/gitdev/SocialFlow-Web && export CATALYST_DEBUG=1 && SF_LOG_LEVEL=debug plackup -s Starman --port 4011 --workers 5 -e test app.psgi'
# to reduce RAM usage, use --workers 3
alias msass='cd ~/gitdev/SocialFlow-Web/root/static/scss/mobile'
alias sassbuilder='cd ~/gitdev/SocialFlow-Web/root/static/scss/ad_builder'
alias mscripts='vim ~/gitdev/SocialFlow-Web/SocialFlow-Web-Config/lib/auto/share/dist/SocialFlow-Web-Config/etc/shared/' 

alias mconcat='cd ~/gitdev/SocialFlow-Web/root/grunt && node_modules/grunt-cli/bin/grunt'
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
alias sfcpanm='cpanm --mirror=http://cpan-mirror.dev.saturn.sflow.us:25123 --mirror-only'
#perl5 local::lib                                                                                                            
[ -e $HOME/perl5 ] && eval $( perl -I $HOME/perl5/lib/perl5 -Mlocal::lib=--deactivate ) &&  eval $( perl -I $HOME/perl5/lib/perl5 -Mlocal::lib )

[[ -e /etc/bash_completion.d/git ]] && . /etc/bash_completion.d/git && export PS1='$( __git_ps1 "(%s) " )'$PS1

#nice looking sql traces
export DBIC_TRACE_PROFILE=console
export TERM=xterm-256color
#export PATH=$PATH:$HOME/../../opt/node-*/bin
export PATH=$PATH:$HOME/bin
source `which devel-local.sh`
