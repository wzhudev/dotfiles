set nu
set rnu
set cursorline

syntax on

inoremap jj <Esc>

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

if &term =~ "xterm\\|rxvt\\|gnome\\|screen\\|tmux"
    let &t_SI = "\e[6 q"
    let &t_EI = "\e[2 q"
    let &t_SR = "\e[4 q"
endif
