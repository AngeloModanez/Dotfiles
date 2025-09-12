status is-interactive || exit

type -q vivid; and set -gx LS_COLORS (vivid generate catppuccin-macchiato)

set -Ux CDPATH ~/Projects ~/Projects/*

set -g fish_greeting

fish_default_key_bindings

if not functions -q fisher
  curl -sL https://git.io/fisher | source && fisher update
end

oh-my-posh init --config ~/.config/ohmyposh/config.json fish | source

command -v eza > /dev/null && \
  alias ls="eza --git --icons --color always --long --no-permissions --no-user --no-time --no-filesize --group-directories-first" && \
  alias la="eza --git --icons --color always --long --all --group-directories-first" && \
  alias ll="eza --git --icons --color always --long --group-directories-first"

command -v batcat > /dev/null && alias cat="batcat"
command -v bat > /dev/null && alias cat="bat"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
