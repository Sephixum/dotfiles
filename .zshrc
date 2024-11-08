if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  startx
elif [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 2 ]; then
  Hyprland
fi

alias tb="taskbook"
jcal
echo -------------------------------------
tb --list



export PATH="/home/sephix/.local/bin:$PATH"
export PATH="/home/sephix/.cargo/bin:$PATH"
export VCPKG_ROOT="/home/sephix/.local/share/vcpkg"
export VISUAL=nvim

export EDITOR="nvim"


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vi mode
bindkey -v
export KYETIMEOUT=1

# vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load zsh-sytax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# [ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
alias ls="lsd -la"
alias lst="lsd --tree"
alias cpy="~/Scripts/cpp.py"
alias csballz="wine ~/Games/cs-16/drive_c/Games/Counter-strike 1.6 Original/hl.exe -steam -game cstrike -appid 10 -noipx -nojoy -noforcemspd -noforcemparms -noforcemaccel"
alias prs="cd ~/Documents/C++Related/RayTracing/RayTracingInOneWeekEnd/"
alias runxppen="sh /usr/lib/pentablet/PenTablet.sh &!"
alias discordproxy='discord --proxy-server="127.0.0.1:2080" &!'
