source ~/.zsh/config
source ~/.zsh/completion

eval "$(starship init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git themes thefuck copyfile starship qrcode pyenv python)

#source $ZSH/oh-my-zsh.sh

source $(dirname $(gem which colorls))/tab_complete.sh

unsetopt correct

eval $(thefuck --alias)

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

bash /etc/motd.sh
touch ~/.hushlogin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

source ~/.zsh/aliases
