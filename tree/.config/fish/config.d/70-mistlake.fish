# Mistlake shell look, managed by the catos-niri-mistlake Profile.
# Loaded after CatOS's own modules (including its 60-theme.fish), so these
# colors win. Both files are rendered by matugen from the DMS palette; until
# they exist (first login), CatOS's defaults stay in place.
status is-interactive; or return

set -l __mistlake_colors "$HOME/.config/fish/mistlake-colors.fish"
test -r "$__mistlake_colors"; and source "$__mistlake_colors"

# starship reads STARSHIP_CONFIG on every prompt, so setting it here is
# enough even though CatOS initialises starship elsewhere.
set -l __mistlake_starship "$HOME/.config/starship/mistlake.toml"
test -r "$__mistlake_starship"; and set -gx STARSHIP_CONFIG "$__mistlake_starship"
