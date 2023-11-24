if status is-interactive
    # Commands to run in interactive sessions can go here

    # Run tmux on startup if no other sessions
    if not tmux list-sessions 1>/dev/null
        tmux
    end

end

# Supress fish greeting
set fish_greeting

# Aliases
alias ls='eza -hg'
alias tree='eza -T'
alias dog='bat -n --color always --paging always --pager "less -RF" --theme gruvbox-dark'
alias ip='ip -c'
alias icat='kitty +kitten icat'

# Functions
function cd
    # List files on directory change
    builtin cd $argv
    ls -la
end
