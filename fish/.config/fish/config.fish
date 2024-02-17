if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
rbenv init - fish | source
direnv hook fish | source
set -gx GPG_TTY (tty)
source ~/.iterm2_shell_integration.fish
