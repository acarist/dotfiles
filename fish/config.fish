set --export GOROOT /usr/local/opt/go/libexec
set --export GOPATH $HOME/go
set --export NVM_DIR $HOME/.nvm
# PATH modifications. last item has the highest priority
set --export PATH /usr/local/bin $PATH
set --export PATH /usr/local/opt/go/libexec/bin $PATH
set --export PATH $HOME/.cargo/bin $PATH
set --export PATH $GOPATH/bin $PATH
set --export PATH /usr/local/opt/node@6/bin $PATH
set --export PATH $HOME/gcloud/google-cloud-sdk/bin $PATH

set --export LANG "en_US.UTF-8"
set --export LC_COLLATE "en_US.UTF-8"
set --export LC_CTYPE "en_US.UTF-8"
set --export LC_MESSAGES "en_US.UTF-8"
set --export LC_MONETARY "en_US.UTF-8"
set --export LC_NUMERIC "en_US.UTF-8"
set --export LC_TIME "en_US.UTF-8"
set --export LC_ALL "en_US.UTF-8"

set --export EDITOR nvim
set --export MANPAGER "nvim -c 'set ft=man' -"
# set --export PGDATA /usr/local/var/postgres

set --export RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

alias mux='tmuxinator'

python3 -m virtualfish | source

if test -d ~/.config/fish/functions/rust.fish
    . ~/.config/fish/functions/rust.fish/rustc.fish
    . ~/.config/fish/functions/rust.fish/cargo.fish
end

# status --is-interactive; and source (nodenv init -|psub)
set -g fish_user_paths "/usr/local/opt/libpq/bin" $fish_user_paths

# fisher for package management
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

alias cat='bat'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/private/tmp/gcloud/google-cloud-sdk/path.fish.inc' ]; . '/private/tmp/gcloud/google-cloud-sdk/path.fish.inc'; end
