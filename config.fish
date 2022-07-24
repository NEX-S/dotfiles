
set EDITOR "nvim"

function fish_title
    echo $argv[1] (prompt_pwd)
end

function fish_greeting
    set_color normal
    echo "  --        __  ___   _________  __ ____  ____________________________      --  "
    echo "  --       / / / / | / / ____/ |/ // __ \/ ____/ ____/_  __/ ____/ __ \     --  "
    echo "  --      / / / /  |/ / __/  |   // /_/ / __/ / /     / / / __/ / / / /     --  "
    echo "  --     / /_/ / /|  / /___ /   |/ ____/ /___/ /___  / / / /___/ /_/ /      --  "
    echo "  --     \____/_/ |_/_____//_/|_/_/   /_____/\____/ /_/ /_____/_____/       --  "
    echo "  --                                                                        --  "
    echo "  --                             [ UNEXPECTED ]                             --  "
    echo "  --                                                                        --  "
    echo "                                                                                "
    set_color green
    echo "  [ $(date +%m-%d\ %a\ \ %T) ]"
end

# ENABLE VI-MODE
function fish_user_key_bindings
    # ENABLE EMACS KEYBINDINGS
    fish_default_key_bindings -M insert

    # ENABLE VI KEYBINDINGS
    fish_vi_key_bindings --no-erase insert
end

# SET VI-MODE CURSOR SHAPE
set fish_cursor_default block
set fish_cursor_insert line blink
set fish_cursor_visual block
set fish_cursor_replace_one underscore

bind -M default 'L' end-of-line repaint
bind -M default 'H' beginning-of-line repaint
bind -M default ' ' accept-autosuggestion

# SET PROMPT
function fish_prompt
    echo "$(set_color red) $(prompt_pwd)$(set_color green) [ $(set_color normal)"
end

function fish_right_prompt
    echo "$(set_color green) ] $(set_color normal)$(date +%r) "
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias c='cd ~/t00ls/Clash/ && nohup ./clash-1.8.0 -d . &'
alias renvim='rm -rf ~/.local/share/nvim ~/.cache/nvim  ~/.config/nvim/lua/plugins/packer_compiled.lua && \
    git clone --depth 1 https://github.com/wbthomason/packer.nvim /home/nex/.local/share/nvim/site/pack/packer/start/packer.nvim'
alias ficonf='nvim ~/.config/fish/config.fish'
alias alconf='nvim ~/.alacritty.yml'
alias nvimconf='nvim /home/nex/.config/nvim/init.lua'
alias plugconf='nvim /home/nex/.config/nvim/lua/core/plugins.lua'
alias setconf='nvim /home/nex/.config/nvim/lua/core/options.lua'
alias mapconf='nvim /home/nex/.config/nvim/lua/core/keymaps.lua'

function rm
    mv -i $argv ~/.local/share/Trash/files/
end

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

