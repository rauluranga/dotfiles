##usage :

##install homebrew

```bash
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

##install rbenv & ruby

```bash
$ brew update
$ brew install rbenv 
$ brew install ruby-build

$ rbenv install 2.1.2
$ rbenv global 2.1.2
$ rbenv rehash
```

##install tmux
```bash
$ brew update
$ brew install tmux
```

##install oh-my-zsh

```bash
$ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

##clone dotfiles

```bash
$ gem install homesick
$ homesick clone rauluranga/dotfiles
$ homesick symlink dotfiles
```