export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
export FZF_DEFAULT_COMMAND="fd --type f"
export PATH="$PATH:$HOME/google-cloud-sdk/bin"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

# General aliases
alias psyu="sudo pacman -Syu"
alias prns="sudo pacman -Rns"
alias psy="sudo pacman -S --noconfirm"
alias vim="nvim"
alias e="nvim"
alias open="xdg-open"
alias o="xdg-open"
alias phd="cd $HOME/Documents/twindevops/"
alias tobi="hyprctl keyword monitor 'eDP-1, disable'"
alias tonbi="hyprctl keyword monitor 'eDP-1, 1920x1080@60, 0x0, 1'"

# Kitty related
alias d="kitten diff"
alias gd="git difftool --no-symlinks --dir-diff"

# ls
alias ls="ls --color"
alias l="ls"
alias ll="ls -l"
alias lla="ls -la"

# Git
alias g="git"
alias gl="git log --oneline --decorate"
alias ga="git add"
alias gaa="git add -A"
alias gcm="git commit -m"
alias gs="git status"
alias gss="git status -s"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gp="git push"
alias gf="git fetch"
alias gP="git pull"

