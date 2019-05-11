# dot-emacs-dot-d
Yet another personal `.emacs.d/` setup

## Reference version: emacs 24 on ubuntu 16.04
* Use **master** branch for emacs 25 on ubuntu 18.04

## Setup
There are many ways to setup
1. Use the repository for `.emacs.d` directly.
2. Symlink the repository to `.emacs.d`.
3. Put the repository anywhere.
   - run the script [`cwdemacs`](cwdemacs) to test;
   - `cwdemacs` sets `$HOME` to the repository and
     uses `$HOME/.emacs.d` that symlinks the repository itself;

## Packages to setup
* el-get
* company
  - (global-company-mode t) except in python-mode
* auto-complete
  - use in python-mode only
* counsel - swiper, ivy
* projectile - counsel-projectile
  - melpa version for emacs 24 not compatible with counsel
  - use el-get to install projectile-0.14.0
* python-mode
  - company does not work well
  - uses auto-complete instead
* irony - company-irony, company-irony-c-headers
* gtags - counsel-gtags