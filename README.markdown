# Java Base

A java project generator

### What you get

* simple java hello world app
* junit test with mvn test
* mvn exec:java launcher
* package/assembly plugin for executable fatjars
* sensible .gitignore
* working .travis.yml config
* default README.markdown

### Installation

Clone the project:

    git clone git@github.com:capotej/java-base.git ~/.java_base

For bash users:

    echo 'eval "$($HOME/.java_base/bin/java-base init -)"' >> ~/.bash_profile
    exec bash

For zsh users:

    echo 'eval "$($HOME/.java_base/bin/java-base init -)"' >> ~/.zshenv
    source ~/.zshenv


### Usage

Once installed, usage is very simple:

    base new com.twitter.pterodactyl

This will create a project ```pterodacytl/``` in the current directory
