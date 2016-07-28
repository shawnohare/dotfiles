# Shawn O'Hare's Dotfiles

# Introduction

These dotfiles are organized to take advantage of the GNU `stow` symlink
farm manager.  For example, executing `stow git` from the dotfiles root
directory will symlink the version controlled git configuration files to
the correct location.  

Dotfiles are generally organized topically.

## conf helper script

The conf script int he `bin` dir provides a number of commands to ease the
bootstrap and configuration maintenance processes.

# Manual steps

Many of the steps below are automated for macos by the `conf` script.
Nonetheless, it's often more simple to just execute the commands manually.

1. Make requisite dirs.
1. Get `git` (`xcode-select --install` for macos or `sudo apt-get git` on ec2 linux)
1. Get `stow` (`brew install stow` or potentially build from source on macos)
1. Get dotfiles repo.
1. `Run ~/dotfiles/bin/bin/conf init (or install)`

## Cloning

To clone this repository along with its submodule dependencies, use
```bash
git clone --recursive https://github.com/shawnohare/dotfiles.git
```

# Configurations

## profile

The `profile` dir contains common shell exports, aliases, and etc. that make
up our shell profile. It is sourced by `~.bash_profile`, `~.bashrc`, and
`~/.zshenv`

## Git 

These files live in `${XDG_CONFIG_HOME}/git` and represent the global
user configuration settings.  Local or private settings go in the
`config.local` file, which is loaded by the `config` file.
