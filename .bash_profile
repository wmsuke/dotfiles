# eval "$(rbenv init -)"

alias ls='gls -F --color=auto'
alias vi='vim'
alias mvim='/Applications/MacVim.app/Contents/MacOS/mvim --remote-tab-silent'

# cron
export EDITOR=/usr/bin/vim

# pyenv
# export PYENV_ROOT=${HOME}/.pyenv
# if [ -d "${PYENV_ROOT}" ]; then
  # export PATH=${PYENV_ROOT}/bin:$PATH
  # eval "$(pyenv init -)"
  # eval "$(pyenv virtualenv-init -)"
# fi

# SVN
export SVN_EDITOR="vim --noplugin"

# golang
export GOROOT=/usr/local/go
export GOPATH=$GOROOT:/Users/matsui/app/GoglandProjects
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

[[ -s "/Users/matsui/.gvm/scripts/gvm" ]] && source "/Users/matsui/.gvm/scripts/gvm"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
