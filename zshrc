if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

function diff_sjis() {
  git diff ${1} --color=always | nkf -u | less -R
}
alias diffs='diff_sjis'

alias g="git"

alias ccp="pwd | pbcopy && echo copyed current path"

alias reboot="exec $SHELL -l"

alias lsnc="sudo lsyncd /etc/lsync.conf.lua && echo -e \\n\\nlsyncd\\n\\n && tail -f /tmp/lsyncd.log"
alias gitc="git checkout"
alias	gits="git status"
alias gitdf="git diff ./"
alias mkcd='(){mkdir $1 && mv $1}'
