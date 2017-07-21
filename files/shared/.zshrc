source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load standard plugins.
antigen bundle brew
antigen bundle dircycle
antigen bundle dirhistory
antigen bundle docker
antigen bundle encode64
antigen bundle git
antigen bundle python
antigen bundle vagrant

# Load plugins from github.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Miscellaneous theme settings.
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "

# Use this command to see lots of colors and their codes:
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"

# Set left prompt colors.
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="000"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="027"
POWERLEVEL9K_DIR_HOME_BACKGROUND="000"
POWERLEVEL9K_DIR_HOME_FOREGROUND="067"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="000"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="067"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="000"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="033"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='000'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='039'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='000'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='039'

# Set right prompt colors.
POWERLEVEL9K_PYENV_FOREGROUND='243'
POWERLEVEL9K_PYENV_BACKGROUND='000'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='243'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='000'
POWERLEVEL9K_TIME_FOREGROUND='243'
POWERLEVEL9K_TIME_BACKGROUND='000'

# Set up prompts.
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs pyenv virtualenv time)

# Miscellaneous zsh settings.
DISABLE_AUTO_TITLE="true"

# Tell Antigen that you're done.
antigen apply

# Load external files.
source $HOME/.aliases
source $HOME/.exports

# Source any private settings not tracked in this repo.
if [ -f ~/.private ]; then
   source ~/.private
fi

# Set up virtualenv.
source $HOME/.venv_setup
