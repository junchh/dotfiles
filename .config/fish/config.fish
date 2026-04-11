if status is-interactive
    # Commands to run in interactive sessions can go here
end
bind ctrl-backspace backward-kill-word
function ssh_agent 
	eval (ssh-agent -c)
end
set -g fish_greeting
fish_config theme choose "Rosé Pine Moon"
set -gx PATH /Users/junchh/.cargo/bin $PATH
starship init fish | source

# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"
