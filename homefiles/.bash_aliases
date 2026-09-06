# Update/Install/Uninstall shortcuts
alias update='sudo apt update && sudo apt full-upgrade -y'
alias autoremove='sudo apt autoremove -y'
alias sai='sudo apt install'
alias remove='sudo apt remove'

# Git
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs="git status"
alias ga="git add"


# Network
alias netcheck='ping 8.8.8.8'