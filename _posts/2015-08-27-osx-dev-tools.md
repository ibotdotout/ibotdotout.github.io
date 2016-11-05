---
layout: post
title: OSX Dev Tools
tags: osx
permalink: dev-tools/
---

### Package Manager

- [Homebrew - The missing package manager for OS X](http://brew.sh)

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- [Homebrew Cask - “To install, drag this icon…” no more!](http://caskroom.io)

```sh
$ brew tap caskroom/cask
```

- [Caskroom-fonts](https://github.com/caskroom/homebrew-fonts)

```sh
$ brew tap caskroom/fonts
```

- [homebrew-rmtree](https://github.com/beeftornado/homebrew-rmtree) - [Uninstall / remove a Homebrew package including all its
dependencies](http://stackoverflow.com/questions/7323261/uninstall-remove-a-homebrew-package-including-all-its-dependencies)

```sh
$ brew tap beeftornado/rmtree && brew install brew-rmtree
$ brew rmtree <package>
```

### Developer Tools

- [iTerm2 - Mac OS Terminal Replacement](http://iterm2.com)

```sh
# this is too old version
$ brew cask install iterm2

# try night build that lastest version
$ brew tap caskroom/versions
$ brew cask install iterm2-nightly
```
- [Oh My Zsh - managing your zsh configuration.](http://ohmyz.sh)

```sh
$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

- [Dash - API Documentation Browser](https://kapeli.com/dash)

```sh
$ brew cask install dash
```

### Window Manager

- [Spectacle - Move and resize windows with ease](http://spectacleapp.com)

```sh
$ brew cask install spectacle
```

### Etc

- [f.lux - warm your display color](https://justgetflux.com)

```sh
$ brew cask install flux
```

- [Slack: Be less busy](https://slack.com)

```sh
$ brew cask install slack
```

- [OSX Thai Dictionary](http://www.iviewapp.net/2012/12/thai-dictionary-mac-os-x-mountain-lion.html)
- [iTerm2 + oh my zsh + solarized + Meslo powerline font (OSX)](https://gist.github.com/kevin-smets/8568070)
- [homebrew-versions](https://github.com/caskroom/homebrew-versions)
- [Cider - homebrew wrapper](https://github.com/msanders/cider)
