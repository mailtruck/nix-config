source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load plugin bundles.
antigen bundle brew
antigen bundle dircycle
antigen bundle dirhistory
antigen bundle docker
antigen bundle encode64
antigen bundle git
antigen bundle python
antigen bundle vagrant
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme eendroroy/alien alien

# Tell Antigen that you're done.
antigen apply

# Load aliases.
source ~/.aliases
