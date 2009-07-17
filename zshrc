
export PKGCONFIG_PATH="/usr/local/lib/pkgconfig:/opt/local/lib/pkgconfig"
export PATH=$PATH:/opt/local/bin:/usr/local/mysql/bin/:/opt/local/ironruby/bin/:/opt/local/jruby-1.2.0/bin/:/opt/local/ioke/bin/:/opt/local/lib/rabbitmq/bin/
export SVN_EDITOR="vim"
export MANPATH=/opt/local/man:$MANPATH
export GEM_PATH=/usr/lib/ruby/gems/1.8
# number of lines kept in history
export HISTSIZE=10000
# number of lines saved in the history after logout
export SAVEHIST=10000
# location of history
export HISTFILE=~/.zhistory
# history options
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_allow_clobber
setopt hist_reduce_blanks
setopt share_history

#setopt auto_list list_ambiguous

setopt list_types

# directory options
setopt auto_cd
setopt auto_pushd

# lscolors
#export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jpg=01;35:*.png=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.png=01;35:*.mpg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:"

export CLICOLOR=1
#export LSCOLORS=DxGxcxdxCxegedabagacad
export LSCOLORS=DxGxcxdxCxegedabagacad

# console colors
autoload -U colors && colors
alias ls="ls -F"

# completion
autoload -U compinit && compinit
# colorize completion
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=$color[cyan]=$color[red]"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
# prevent CVS and SVN from being completed
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
# ignore completion functions
zstyle ':completion:*:functions' ignored-patterns '_*'
# ignore what's already selected on line
zstyle ':completion:*:(rm|kill|diff):*' ignore-line yes
# hosts completion for some commands
#local knownhosts
#knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} ) 
#zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts
compctl -k hosts ftp lftp ncftp ssh w3m lynx links elinks nc telnet rlogin host
compctl -k hosts -P '@' finger

# manpage comletion
man_glob () {
  local a
  read -cA a
  if [[ $a[2] = -s ]] then
  reply=( ${^manpath}/man$a[3]/$1*$2(N:t:r) )
  else
  reply=( ${^manpath}/man*/$1*$2(N:t:r) )
  fi
}

compctl -K man_glob -x 'C[-1,-P]' -m - 'R[-*l*,;]' -g '*.(man|[0-9nlpo](|[a-z]))' + -g '*(-/)' -- man
# fuzzy matching
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# completion cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
# remove trailing slash in directory names, useful for ln
zstyle ':completion:*' squeeze-slashes true

# named directories
for i in $HOME/dev/ruby/ror/*; do
	project=`basename $i`;
	hash -d $project="$i"
done


# global aliases
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias m="mate Rakefile app config db public script stories spec lib"
alias slapsta="sudo /opt/local/etc/openldap/slapd.sh start"
alias slapsto="sudo /opt/local/etc/openldap/slapd.sh stop"
alias setupdbs="cp config/database.yml.sample config/database.yml;rake db:create;rake db:create RAILS_ENV=test;rake db:migrate"
alias startpg="sudo su postgres -c '/opt/local/lib/postgresql83/bin/postgres -D /opt/local/var/db/postgresql83/defaultdb'"
# ensures that deleting word on /path/to/file deletes only 'file', this removes the '/' from $WORDCHARS
export WORDCHARS="${WORDCHARS:s#/#}"
export WORDCHARS="${WORDCHARS:s#.#}"
export CUCUMBER_COLORS=pending_param=magenta:failed_param=magenta:passed_param=magenta:skipped_param=magenta
export RSPEC=true
parse_git_branch() {
 	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function title () {
  unset PROMPT_COMMAND # more on this later
  echo -ne "\e]0;$1\a"
}

function precmd {
	title `pwd`
PS1="$(print '%{\e[0;37m%}%n%{\e[0m%}')@%M %{$fg[yellow]%}%~%{$fg[green]%}$(parse_git_branch) %{$reset_color%}>"	
}


# Usage:
# title 'my title'

typeset -U fpath
autoload -U _git
