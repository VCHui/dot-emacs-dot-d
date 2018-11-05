;; python-setup

(unless (package-installed-p 'python-mode)
  (package-install 'python-mode))

(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))

(when (package-installed-p 'python-mode)
  (add-hook
   'python-mode-hook
   (lambda()
     (company-mode -1)
     (global-company-mode -1)
     (if (package-installed-p 'auto-complete) (auto-complete-mode 1)))
   )
  (require 'python-mode)
  (provide 'python-setup)
  )
