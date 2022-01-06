if not status --is-interactive
  exit
end

. ~/.profile

if test -f ~/.config/fish/local.fish
    . ~/.config/fish/local.fish
end

# stderred
set -l STDERRED_SO $HOME/bin/stderred/build/libstderred.so
if test -f $STDERRED_SO
    set -gx --append --path LD_PRELOAD $STDERRED_SO
end

# displays "me" instead of username if it is this
set default_user "kamila"

function fish_greeting
    alive
#    set incnt (task +in +PENDING count)
#    [ $incnt -ne 0 ]; and echo "$incnt tasks in inbox"
#    set complcnt (completed_today)
#    [ $complcnt -ne 0 ]; and echo "Completed $complcnt tasks today. Keep it up!"
end

. ~/.config/fish/aliases.fish
# . ~/.config/fish/autoenv.fish

if test -f ~/.config/fish/cdist-generated.fish
    . ~/.config/fish/cdist-generated.fish
end
