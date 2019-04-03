# Path to Oh My Fish install.
set -gx OMF_PATH "~/.local/share/omf"

# Customize Oh My Fish configuration path.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

status --is-interactive; and . (rbenv init -|psub)
set -x NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish
source ~/dev/ocaml/opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

alias ls="exa"
alias "lsla"="exa -la"
alias "lslta"="exa -lasnew"
alias gst="git status"
alias z="j"
alias kpan "kubectl get pods --all-namespaces"
alias kc "kubectx"
alias em "emacsclient -t"
set -x WINEPREFIX $HOME/.wine32
set -x WINEARCH "win32"
set -x AOE_HOME "~/games/aoe/Age\ of\ Empires\ II"
alias aoe="cd $AOE_HOME ; and wine age2_x1/age2_x1"
set -x HOMEBREW_NO_ANALYTICS 1

# Load fishmarks (http://github.com/techwizrd/fishmarks)
. $HOME/.fishmarks/marks.fish
set -x TERM xterm-256color
set -x CHEF_DK /opt/chefdk
set -x CONFLUENT_HOME /opt/confluent
set -x CONFLUENT_BIN $CONFLUENT_HOME/bin
set -x CHEF_DK_BIN $CHEF_DK/bin
set -x GOBIN $GOPATH/bin
set -x PATH $PATH ~/.mix/escripts
set -x PATH $PATH $GCLOUD_BIN
set -x PATH $PATH $CONFLUENT_BIN
set -x PATH $CHEF_DK_BIN $PATH
set -x PYTHONPATH "/usr/local/Cellar/gnuradio/3.7.13.4_2/lib/python2.7/site_packages"
alias emd="ps aux | grep Emacs | grep -v grep | awk '{print $2}' | xargs kill -9 ; emacs --daemon"
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

[ -s "~/.jabba/jabba.fish" ]; and source "~/.jabba/jabba.fish"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '~/google-cloud-sdk/path.fish.inc'; else; . '~/google-cloud-sdk/path.fish.inc'; end; end

function k1pod
    kubectl get pods -l app=$argv | awk '/Running/ {print $1}' | head -1
end

