#!/bin/bash

set -eux -o pipefail

# Set up bashrc related files.
cp ./files/.bash_aliases ~/.bash_aliases
cp ./files/.bashrc ~/.bashrc
cp ./files/.exports ~/.exports
cp ./files/.nanorc ~/.nanorc
cp ./files/.tmux.config ~/.tmux.config
