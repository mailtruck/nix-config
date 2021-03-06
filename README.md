# Overview

This install script is designed to fully cofigure a *nix-based system to my
personal liking. Rather than downloading, installing, creating config files,
and other activities related to getting a freshly installed system customized,
I run this install script.

# Installation

To download, extract, and run the installer, run the following command:

    pushd /tmp && \
        rm -rf nix-config-master && \
        wget "https://github.com/carterjones/nix-config/archive/master.tar.gz" && \
        tar -xvf master.tar.gz && \
        rm master.tar.gz && \
        cd nix-config-master/ && \
        ./install && \
        popd

# Design Philosophy

Rather than just having a "[dotfiles](https://www.google.com/search?q=dotfiles)"
repo, which works great in many cases, I prefer to keep as much in a single
config repo as possible. This means also installing software too. I provision
systems for myself constantly and every second where I repeat myself adds up, so
this repo helps me streamline my efforts and be efficient.

For more info about this concept, please see http://growsmethod.com/practices/EverythingInVC.html
