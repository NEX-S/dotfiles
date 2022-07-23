
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# wedisagree
ZSH_THEME="nanotech"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions extract autojump z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c='cd ~/t00ls/Clash/ && nohup ./clash-1.8.0 -d . &'
alias renvim='rm -rf ~/.local/share/nvim ~/.cache/nvim  ~/.config/nvim/lua/plugins/packer_compiled.lua && \
    git clone --depth 1 https://github.com/wbthomason/packer.nvim /home/nex/.local/share/nvim/site/pack/packer/start/packer.nvim'
alias nvimconf='nvim /home/nex/.config/nvim/init.lua'
alias plugconf='nvim /home/nex/.config/nvim/lua/core/plugins.lua'
alias setconf='nvim /home/nex/.config/nvim/lua/core/options.lua'
alias mapconf='nvim /home/nex/.config/nvim/lua/core/keymaps.lua'

alias yay='yay --noconfirm'
alias pacman='pacman --noconfirm'

alias ..='cd ..'
alias ...='cd ../..'
alias r='ranger'
alias ls='exa'
alias ll='exa -l'
alias cat='bat'
alias grep='ripgrep'
alias top='glances'
alias f='trans -l zh -to zh -j -speak -indent 8'


# translate-shell cmatrix

# exa -> ls
# fd / fzf  -> find
# ripgrep -> grep
# htop / glances / gtop -> top
# ctop -> docker
# bat -> cat
# httpie -> curl
# mycli -> mysql

bindkey -v
bindkey -M vicmd 'H' vi-digit-or-beginning-of-line
bindkey -M vicmd 'L' vi-end-of-line
# bindkey -M vicmd ';' history-search-backward
# bindkey -M vicmd '.' vi-repeat-find
# bindkey -M vicmd '/' vi-repeat-change

KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

_fix_cursor() {
   echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)

echo "  --                                                                        --  "
echo "  --        __  ___   _________  __ ____  ____________________________      --  "
echo "  --       / / / / | / / ____/ |/ // __ \/ ____/ ____/_  __/ ____/ __ \     --  "
echo "  --      / / / /  |/ / __/  |   // /_/ / __/ / /     / / / __/ / / / /     --  "
echo "  --     / /_/ / /|  / /___ /   |/ ____/ /___/ /___  / / / /___/ /_/ /      --  "
echo "  --     \____/_/ |_/_____//_/|_/_/   /_____/\____/ /_/ /_____/_____/       --  "
echo "  --                                                                        --  "
echo "  --                             [ UNEXPECTED ]                             --  "
echo "  --                                                                        --  "

export EDITOR="/usr/bin/nvim"
