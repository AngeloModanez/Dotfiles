function @plugin
    set -g plugins $plugins (string lower $argv[1])
end

@plugin jorgebucaran/autopair.fish
@plugin jorgebucaran/fisher
@plugin jorgebucaran/humantime.fish
@plugin meaningful-ooo/sponge
