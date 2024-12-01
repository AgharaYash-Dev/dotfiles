# Lines configured by zsh-newuser-install
#bindkey -v
# End of lines configured by zsh-newuser-install

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# +--------+
# | COLORS |
# +--------+

# Override colors
eval "$(dircolors -b $HOME/.config/zsh/dircolors)"

# +---------+
# | ALIASES |
# +---------+

source $HOME/aliases/aliases

# +------------+
# | COMPLETION |
# +------------+
source $HOME/.config/zsh/completion.zsh

# +---------------------+
# | SYNTAX HIGHLIGHTING |
# +---------------------+
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# +------------+
# | PROMPT     |
# +------------+
# Keep this line at the end of zshrc
eval "$(starship init zsh)"
