# my-fish-functions
Custom Config and functions for the Fish Shell, making common tasks more convenient &amp; my life easier 🙂 .


## Setup Fish
https://www.vultr.com/docs/installing-fish-shell-on-ubuntu
### Step 1: Downloading Fish
You can install Fish with apt-get:
```
apt-get install fish
```

### Step 2: Entering Fish
You can now enter the Fish shell simply by typing:
```
fish
```

### Step 3: Setting Fish as your default shell
You can set Fish as your default shell instead of Bash:
```
chsh -s /usr/bin/fish
```

This way, Fish will be used automatically every time you log in. Test this setting by exiting SSH, then logging back in. Upon logging in, you will be presented with a Fish shell.

### Step 4: Creating a config file
In order to be able to change the properties of the Fish shell, we first need to create a config file.
```
mkdir -p ~/.config/fish
vim ~/.config/fish/config.fish
```


## Installation

```sh
# Backup your old ~/.config/fish first, then:
$ git clone https://github.com/helkaroui/my-fish-functions
$ ./install_requirements.sh
$ ./update_fish.sh
```