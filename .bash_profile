# eval "$(rbenv init -)"

alias ls='gls -F --color=auto'
alias vi='vim'
alias mvim='/Applications/MacVim.app/Contents/MacOS/mvim --remote-tab-silent'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# cron
export EDITOR=/usr/bin/vim

# pyenv
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
  export PATH=${PYENV_ROOT}/bin:$PATH
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# SVN
export SVN_EDITOR="vim --noplugin"

# golang
export GOROOT=/usr/local/go
export GOPATH=$GOROOT:/Users/matsui/app
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PKG_CONFIG_PATH=/usr/lib/pkgconfig

[[ -s "/Users/matsui/.gvm/scripts/gvm" ]] && source "/Users/matsui/.gvm/scripts/gvm"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
