export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
export FZF_DEFAULT_COMMAND="fd --type f"

# General aliases
alias psyu="sudo pacman -Syu"
alias prns="sudo pacman -Rns"
alias e="nvim"

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

