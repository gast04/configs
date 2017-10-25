# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/niku/.oh-my-zsh

# set ZSH-Theme
ZSH_THEME="blinks"

# change timestamp for history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# enable ZSH-autocompletion
source $ZSH/oh-my-zsh.sh
source /home/niku/git-repos/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# set history completion toi STRG+SPACE
bindkey '^ ' autosuggest-accept



##############################################################
#                USER-DEFINED FUNCTIONS                     #
##############################################################

# Shell-Script-Function for simple python env changing
workon () {

  # predefines 
  RED='\033[0;31m'
  GREEN='\033[0;32m'
  NC='\033[0m' # No Color

  if [ -z "$1" ] 
    then
      echo "usage: workon <list|python-env>";
      return;
  fi

  if [ $1 = "how" ]
    then
    echo "virtualenv -p /usr/bin/<python-version> /home/niku/python-envs/<name>"
    return;
  fi

  if [ $1 = "list" ]
    then
      # TODO: maybe some stats
      echo "${GREEN}$(ls /home/niku/python-envs) ${NC}"
      return;
  fi

  py_dir=$(which python)
  if [[ $py_dir != /usr/bin* ]]
    then
      deactivate;
  fi

  source /home/niku/python-envs/$1/bin/activate
}

# default ctf2 environment
workon ctf2

# execute vboxheadless-script
# to get vm commands on startup
. /home/niku/LosFuzzys/VMScripts/vboxheadless.sh

