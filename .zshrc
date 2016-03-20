# Path to your oh-my-zsh installation.
export ZSH=/home/iyyel/.oh-my-zsh

# Alias source
source ~/.aliases.sh

# Set name of the theme to load.
ZSH_THEME="theunraveler"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_DK.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='nvim'
fi
