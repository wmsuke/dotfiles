eval "$(rbenv init -)"

alias ls='gls -F --color=auto'
alias vi='vim'
alias mvim='/Applications/MacVim.app/Contents/MacOS/mvim --remote-tab-silent'

# SVN
export SVN_EDITOR="vim --noplugin"

# golang
export GOPATH=$HOME/lib/go:$HOME/app/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
