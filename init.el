;;; emacs init

;; melpa-setup
(require 'package)
(add-to-list
 'package-archives
 '("melpa-stable" . "https://stable.melpa.org/packages/")
 )
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; init.d
(add-to-list 'load-path (concat user-emacs-directory "init.d"))
(load-library "basic-setup")
(require 'company-setup)
(require 'magit-setup); + diff-hl;
(require 'ivy-setup); depends:swiper,counsel;
(require 'projectile-setup); +counsel-projectile;
(require 'python-setup);
(require 'webmode-setup);

;;
