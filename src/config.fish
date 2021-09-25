# Aliases
alias k=kubectl


# Shortcuts
alias workspace="cd ~/workspace"
alias project="cd ~/workspace/active_project"

# Set global variables
set -gx JAVA_HOME "/apps/java/"



# Add to PATH
set -U fish_user_paths $JAVA_HOME/bin $fish_user_paths