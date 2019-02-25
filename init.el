;;; emacs init

;; basic-setup
(show-paren-mode t)
;; (setq show-paren-style 'expression)
(add-hook 'find-file-hook (lambda() (ruler-mode t)))
(add-hook 'find-file-hook (lambda() (linum-mode 1)))
(add-hook
 'before-save-hook
 (lambda()
   (delete-trailing-whitespace)
   (when (not indent-tabs-mode) (untabify (point-min) (point-max))))
 )

;; theme-setup
(if (not (display-graphic-p))
    (if (member 'tango-dark-default-none (custom-available-themes))
	(load-theme 'tango-dark-default-none t)
      (load-theme 'tango-dark))
  (load-theme 'tango-dark)
  (tool-bar-mode 0)
  )

;; melpa-setup
(require 'package)
(add-to-list
 'package-archives
 '("melpa-stable" . "https://stable.melpa.org/packages/")
 )
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; el-get setup
(unless (package-installed-p 'el-get)
  (package-install 'el-get))
(unless (file-directory-p "~/.emacs.d/el-get")
  (make-directory "~/.emacs.d/el-get"))
(unless (file-directory-p "~/.emacs.d/el-get-user/recipes")
  (make-directory "~/.emacs.d/el-get-user/recipes"))
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
(package-initialize)

;; init.d
(add-to-list 'load-path "~/.emacs.d/init.d")

(require 'company-setup)
(require 'ivy-setup); + swiper, counsel;
(require 'projectile-setup); + dash;

(require 'cc-gtags-setup); + counsel-gtags;
(require 'cc-irony-setup); + company-irony;
(require 'python-setup); + auto-complete;
