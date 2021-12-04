# Aliases
alias k=kubectl
alias grpc=grpc-client-cli
alias kctx=kubectx
alias kns=kubens


# Shortcuts
alias workspace="cd ~/workspace"
alias project="cd ~/workspace/active_project"

# Set global variables
set -gx JAVA_HOME "/apps/java/"
set -gx WORKSPACE_HOME "/home/hamza/workspace"
set -gx 3RD_PARTY_HOME "/home/hamza/workspace/3rd-party-projects"


# Add to PATH
set -U fish_user_paths $JAVA_HOME/bin /usr/local/go/bin /home/$USER/.local/bin $fish_user_paths