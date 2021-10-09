mkdir ~/workspace
mkdir ~/workspace/3rd-party-projects

mkdir -p ~/.config/fish



sudo mkdir /apps
sudo chown $USER:$USER /apps

# Install Java
## Install OpenJDK

## Install GraalVM
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.2.0/graalvm-ce-java8-linux-amd64-21.2.0.tar.gz -O /tmp/graalvm-ce-java8-linux-amd64-21.2.0.tar.gz
tar -xzf /tmp/graalvm-ce-java8-linux-amd64-21.2.0.tar.gz -C /apps
mv /apps/graalvm-ce-java8-21.2.0 /apps/java-graalvm-java8-21.2.0

# Set the default JAVA to GraalVM
ln -s /apps/java-graalvm-java8-21.2.0 /apps/java


# Install docker
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker ${USER}