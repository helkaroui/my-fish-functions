indentation='	'

# --------------------
# Define output buffer

output=""
function echoPrepare() {
	if [[ "$1" == "-n" ]]; then
		output+="$2"
	else
		output+="$1\n"
	fi
}

# ----------------
# Create ASCII art

# Strip domain from hostname
computerName=${HOSTNAME%%.*}

# Generate ASCII art and indent every line of it
ascii=$(figlet -k -w 150 "$USER@$computerName")
asciiIndented=$(echo "$ascii" | sed "s/^/$indentation/")

# Generate user and hostname string (colored for output, uncolored for length determination)
userAndHostname="$USER@$computerName ($HOSTNAME)"
userAndHostnameColored="\033[1;32m$USER\033[0m@\033[36m$computerName\033[0m (\033[36m$HOSTNAME\033[0m)"

# Center user and hostname string

	# Get the first line of the ASCII art, determine its length, remove 1 (trailing newline)
	asciiFirstline=$(echo "$ascii" | head -1)
	asciiLength=$(( ${#asciiFirstline} - 1 ))

	# Get the length of the unformatted user and hostname string
	userAndHostnameLength=${#userAndHostname}
	
	# Calculate the space padding on the left to center the string
	userAndHostnameCenterPaddingLength=$(( ($asciiLength - $userAndHostnameLength) / 2 ))
	
	# Put it together
	userAndHostnameCentered="\033[${userAndHostnameCenterPaddingLength}C$userAndHostnameColored"

# Build output string
echoPrepare "\033[1;38m"
echoPrepare
echoPrepare "$asciiIndented"
echoPrepare "\033[0m"
echoPrepare "\033[3A" # Go 3 lines up
echoPrepare "$indentation$userAndHostnameCentered"

# -------------
# Create footer

echoPrepare
echoPrepare "$indentation\033[1;38mHave a nice day, \033[32m$USER\033[0;1;38m!\033[0m"
echoPrepare

# --------------------------------
# Finally print everything at once

echo -ne "$output"