#!/bin/bash

# 1. Créer les dossiers

mkdir -p "$HOME/bin"
mkdir -p "$HOME/cegep"
mkdir -p "$HOME/projets"

# 2. Installer les logiciels

sudo pacman -Sy git vim gcc gdb python3 python-pip python3-venv

# 3. Copier les dotfiles

cp .bashrc ~/
cp .bashrc ~/.config/