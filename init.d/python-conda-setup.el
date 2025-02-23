;; python-setup

(unless (package-installed-p 'python-mode)
  (package-install 'python-mode))

(when (package-installed-p 'python-mode)
  (unless (package-installed-p 'anaconda-mode)
    (package-install 'anaconda-mode)))

(when (package-installed-p 'anaconda-mode)
  (unless (package-installed-p 'company-anaconda)
    (package-install 'pyenv-mode)
    (package-install 'company-anaconda)))

(when (package-installed-p 'company-anaconda)
  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-anaconda)))

(when (package-installed-p 'python-mode)
  (add-hook
   'python-mode-hook
   (lambda()
     (setq py-indent-paren-spanned-multilines-p nil)
     (setq py-indent-list-style 'one-level-to-beginning-of-statement)
     (anaconda-mode)))
  (require 'python-mode)
  (require 'pyenv-mode)
  (provide 'python-conda-setup))
