#!/bin/bash

set -eux -o pipefail

# Check for Sublime, move on if it exists.
if [[ $(which subl &>/dev/null; echo $?) -ne 0 ]]; then

	# Install Sublime 3.
	wget "https://download.sublimetext.com/sublime-text_build-3114_amd64.deb" \
		-O /tmp/sublime.deb
	sudo dpkg -i /tmp/sublime.deb

fi

# Set up config files.
mkdir -p ~/.config/sublime-text-3/
cp -r ./files/.config/sublime-text-3/* ~/.config/sublime-text-3/
