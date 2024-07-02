# omz
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git alias-finder archlinux fd gitignore sudo zoxide zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes

# bat
export BAT_THEME="gruvbox-dark"

# eza
eza="eza --git --icons --classify --group-directories-first --time-style=long-iso --group --all --long --git-ignore --header --color=always"
alias eza=$eza

# fzf
export FZF_CTRL_T_COMMAND="fd --type f --strip-cwd-prefix --hidden --follow --exclude .git"
export FZF_CTRL_T_OPTS="--multi --no-mouse --height 50% --reverse --border --no-bold --preview 'bat --color=always {}'"
export FZF_ALT_C_OPTS="--multi --no-mouse --height 50% --reverse --border --no-bold --preview '$eza {}'"

source <(fzf --zsh)

# mise
eval "$($HOME/.local/bin/mise activate zsh)"

# ssh
source $HOME/.scripts/load_ssh_agent.sh
