# dot-emacs-dot-d
Yet another personal `.emacs.d/` setup

## Reference version: emacs 25 on ubuntu 18.04
* Use _branch_ **master24** for emacs 24 on ubuntu 16.04

## Setup
There are many ways to setup
1. Use the repository for `.emacs.d` directly.
2. Symlink the repository to `.emacs.d`.
3. Put the repository anywhere.
   - run the script [`cwdemacs`](cwdemacs) to test;
   - `cwdemacs` sets `$HOME` to the repository and
     uses `$HOME/.emacs.d` that symlinks the repository itself;

## Packages to setup
* counsel - swiper, ivy
* company
* projectile - counsel-projectile
* python-mode - company-jedi
