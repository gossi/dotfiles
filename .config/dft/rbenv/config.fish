# this will be done by rbenv/fish-rbenv
# https://github.com/rbenv/fish-rbenv
# status --is-interactive; and source (rbenv init -|psub)

# Trying to export paths with $fish_user_paths
# which didn't work :(
# set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths

# Modify $PATH as usual :shrug:

# remove rbenv from $PATH...
if set -l ind (contains -i -- $HOME/.rbenv/shims $PATH)
    set -e PATH[$ind]
end

if set -l ind (contains -i -- $HOME/.rbenv/bin $PATH)
    set -e PATH[$ind]
end


# ... then prepend them
set -gx PATH "$HOME/.rbenv/shims" "$HOME/.rbenv/bin" $PATH
