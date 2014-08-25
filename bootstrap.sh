#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin mastero
#echo "update submodules"
git submodule init
git submodule update
rsync --exclude ".git/" --exclude ".gitmodules"  --exclude ".gitignore" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" -av --no-perms . ~
source ~/.zshrc

