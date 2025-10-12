if status is-interactive
    # Commands to run in interactive sessions can go here
end
bind \t accept-autosuggestion
bind \; complete
bind ctrl-backspace backward-kill-word
set -g fish_greeting
fish_config theme choose "Rosé Pine Moon"
set -gx PATH /Users/junchh/.cargo/bin $PATH
starship init fish | source
