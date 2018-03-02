#!/bin/bash

# install homebrew
usr/bin/ruby \
  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  </dev/null

# to bypass authentication
#   curl -fsSLu user:password https://raw.githubusercontent.com/Homebrew/install/master/install

# install yarn
brew install yarn

# install VScode
brew cask install visual-studio-code

#install docker
brew cask install docker

# install gcloud
brew cask install google-cloud-sdk

# install kubectl in gcloud
gcloud --quiet components install kubectl

# install gsutil in gcloud
# should be unnecessary
# gcloud --quiet components install gsutil

# login to gcloud
gcloud auth login
# opens browser

#set current project to capstone
gcloud config set project airliftnw-uw
