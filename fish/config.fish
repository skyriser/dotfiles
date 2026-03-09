# PATH
fish_add_path $HOME/.local/bin $HOME/local/bin $HOME/local/sbin $HOME/bin
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin

# Global variables
set -gx EDITOR vim
set -gx LANG en_US.UTF-8

# Local variables
if test -f ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end
