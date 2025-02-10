HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
autoload -Uz compinit
compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

eval "$(starship init zsh)"

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# bindkey ";5C" forward-word
# bindkey ";5D" backward-word

# Flux
command -v flux >/dev/null && . <(flux completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/gwendal/google-cloud-sdk/path.zsh.inc' ]; then . '/home/gwendal/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/gwendal/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/gwendal/google-cloud-sdk/completion.zsh.inc'; fi

source <(kubectl completion zsh)

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/local/bin/checkvpn
