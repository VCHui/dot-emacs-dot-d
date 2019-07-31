# dot-emacs-dot-d
Yet another personal `.emacs.d/` setup

## Reference version: emacs 25 on ubuntu 18.04

* Use _branch_ __master24__ for emacs 24 on __ubuntu 16.04__

## Setup

There are many ways to setup
1. Use the repository for `.emacs.d` directly.
2. Symlink the repository to `.emacs.d`.
3. Put the repository anywhere.
   - run the script [`cwdemacs`](cwdemacs) to test;
   - `cwdemacs` sets `$HOME` to the repository and
     uses `$HOME/.emacs.d` that symlinks the repository itself;

* __mac os x__
  - Put the script [`appemacs`](appemacs) as `emacs` on `$PATH`

* Makefile
  - `make setup` - to complete the setup
  - `make clean` - to undo setup
  - `make purge` - to clean up editions created by version control

## Main packages to setup

* company
* counsel - swiper, ivy
* projectile - counsel-projectile
* python-mode - company-jedi
  - `jedi:install-server` in conda env requires
    ```elisp
	(setq jedi:environment-root "conda-env-prefix" )
	```
