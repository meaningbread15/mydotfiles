
export EDITOR=nvim

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH="$PATH:$HOME/.local/bin"

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# History
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt share_history hist_ignore_dups hist_ignore_space hist_reduce_blanks

# Fuzzy finder & zoxide
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# Keybindings
bindkey -e                          # emacs style
bindkey '^r' history-incremental-search-backward
bindkey '^P' up-history
bindkey '^N' down-history

# Autocompletion
autoload -Uz compinit
compinit

# Catppuccin Prompt
local lavender="#b4befe"
local sky="#89dceb"
local teal="#94e2d5"
local mauve="#cba6f7"

PROMPT='%F{'"$lavender"'}%n%f@%F{'"$sky"'}%m%f %F{'"$teal"'}%~%f %F{'"$mauve"'}❯%f '


# Aliases
alias ls='ls --color=auto'
alias c='clear'
alias syncz='sudo timedatectl set-timezone Asia/Kolkata'
alias synct='sudo timedatectl set-ntp true'
alias blc='bluetoothctl connect 4A:EE:0E:C3:AD:9B'
alias bld='bluetoothctl disconnect 4A:EE:0E:C3:AD:9B'
alias blr='bluetoothctl remove 4A:EE:0E:C3:AD:9B'
alias blp='bluetoothctl pair 4A:EE:0E:C3:AD:9B'
alias blpow='bluetoothctl power on'
alias blscan='bluetoothctl scan on'
alias bl='bluetoothctl'
alias nvbi='nvim'
alias nbim='nvim'
alias nvi='nvim'
alias cd..='cd ..'
alias dc..='cd ..'
# alias cat='ccat'
alias batfetch='~/.local/bin/batgreet.sh'
alias virt-manager='/usr/bin/python /usr/bin/virt-manager'
alias la='ls --color=auto'


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Suggestions
# Optional if using autosuggestions
# source /path/to/zsh-autosuggestions/zsh-autosuggestions.zsh



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/shuchi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/shuchi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/shuchi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/shuchi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/shuchi/.opam/opam-init/init.zsh' ]] || source '/home/shuchi/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
