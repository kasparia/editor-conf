export PATH=/opt/homebrew/bin:$PATH
alias ls='ls -G'
alias ll='ls -lG'

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{43}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}% :: '
