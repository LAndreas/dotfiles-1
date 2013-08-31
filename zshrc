ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"

DISABLE_AUTO_UPDATE="true"

plugins=(gitfast git-extras git-hubflow gitfast extract rvm command-not-found sublime bundler brew gem rbates rake zsh-syntax-highlighting)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export PATH="/usr/local/bin:/usr/local/sbin:$PATH:$HOME/Library/Python/2.7/bin:/bin"


source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# setup solarized dircolors
#if [ -e $HOME/.dircolors ]
#then
#	eval `dircolors -b $HOME/.dircolors` 
#sfi

# setup powerline
if [ -e $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]
then
	source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
fi
