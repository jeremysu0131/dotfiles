# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Before using this file, install antigen first https://github.com/zsh-users/antigen
# Source antigen first
source /usr/local/share/antigen/antigen.zsh

export TERM="xterm-256color"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle autojump
antigen bundle colored-man-pages
antigen bundle docker
antigen bundle docker-compose
antigen bundle git 
antigen bundle laravel

antigen bundle sudo
antigen bundle tmux

# Import zsh plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Alias
alias ls='colorls'
# alias la='colorls -lA --sd'


# Setting ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
PATH=$PATH:$(ruby -e 'puts Gem.bindir')

# Setting colorls
source $(dirname $(gem which colorls))/tab_complete.sh

# Set PHP
export PATH=~/.composer/vendor/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
