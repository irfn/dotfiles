set -x NVM_DIR ~/.nvm
fenv "source ~/.profile"
#source ~/.config/fish/nvm-wrapper/nvm.fish
source ~/dev/ocaml/opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

alias ls="exa"
alias "lsla"="exa -la"
alias "lslta"="exa -lasnew"
alias gst="git status"
alias z="j"
alias kpan "kubectl get pods --all-namespaces"
alias k="kubectl"
alias kc "kubectx"
alias em "emacsclient -t"
alias aoe="cd $AOE_HOME ; and wine age2_x1/age2_x1"
set -x HOMEBREW_NO_ANALYTICS 1
alias emd="ps aux | grep Emacs | grep -v grep | awk '{print $2}' | xargs kill -9 ; emacs --daemon"
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

[ -s "~/.jabba/jabba.fish" ]; and source "~/.jabba/jabba.fish"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '~/google-cloud-sdk/path.fish.inc'; else; . '~/google-cloud-sdk/path.fish.inc'; end; end

function k1pod
    kubectl get pods -l app=$argv | awk '/Running/ {print $1}' | head -1
end

