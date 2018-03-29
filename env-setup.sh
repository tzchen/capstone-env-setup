#!/bin/bash

# set up basic vim
touch ~/.vimrc
echo ""

# install homebrew
/usr/bin/ruby \
  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  </dev/null

# to bypass authentication
#   curl -fsSLu user:password https://raw.githubusercontent.com/Homebrew/install/master/install

# Install Homebrew deps
brew bundle

# install kubectl in gcloud
gcloud --quiet components install kubectl

# install gsutil in gcloud
# should be unnecessary
# gcloud --quiet components install gsutil

# login to gcloud
gcloud auth login
# opens browser

# ensure sdk is up to date
gcloud components update

#set current project to capstone
gcloud config set project airliftnw-uw
