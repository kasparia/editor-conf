export PATH=/opt/homebrew/bin:$PATH
alias ls='ls -G'
alias ll='ls -lG'

alias gcl='git clone'
alias gpr='git pull --rebase'

alias g='git'
alias ga='git add'
alias gall='git add .'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcl='git clone'
alias gcm='git commit -v -m'
alias go='git checkout'
alias gdel='git branch -D'
alias gpu='git pull'
alias gm='git merge'
alias gpu='git push'
alias gpp='git pull && git push'
alias gs='git status'

alias gss='git status -s'
alias gs='git status'
alias gup='git fetch && git rebase'
alias gus='git reset HEAD'
alias gw='git whatchanged'

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{43}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}% :: '
