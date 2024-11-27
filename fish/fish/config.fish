set -x NVM_DIR ~/dev/nvm
set -x PKGX_DIR /opt/pkgx/cache
set -x PLANTUML_JAR (brew --prefix plantuml)/libexec/plantuml.jar
set -x ERLANG_EMACS_TOOLS (brew --prefix erlang)/lib/erlang/lib/(ls (brew --prefix erlang)/lib/erlang/lib/ | grep "^tools-")/emacs
set -x MU4E (brew --prefix mu)/share/emacs/site-lisp/mu/mu4e/
fenv "source ~/.profile"
#source ~/.config/fish/nvm-wrapper/nvm.fish
source ~/dev/ocaml/opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

alias ls="eza"
alias "lsla"="eza -la"
alias "lslta"="eza -lasnew"
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

source (brew --prefix jenv)/share/fish/vendor_functions.d/jenv.fish
status --is-interactive; and source (jenv init -|psub)

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '~/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '~/google-cloud-sdk/path.fish.inc'; else; . '~/google-cloud-sdk/path.fish.inc'; end; end

function k1pod
    kubectl get pods -l app=$argv | awk '/Running/ {print $1}' | head -1
end
starship init fish | source

pyenv init - | source
