# Aliases
alias workspace="cd ~/workspace"
alias k=kubectl


# Set global variables
set -gx JAVA_HOME "/apps/java/"



# Add to PATH
set -U fish_user_paths $JAVA_HOME/bin $fish_user_paths