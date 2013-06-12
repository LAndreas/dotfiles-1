ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"
DISABLE_AUTO_UPDATE="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH:$HOME/Library/Python/2.7/bin"
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# setup solarized dircolors
if [ -e $HOME/.dircolors ]
then
	eval `dircolors -b $HOME/.dircolors` 
fi

# setup powerline
if [ -e $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]
then
	source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
fi
