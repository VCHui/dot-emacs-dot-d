;; company-setup

(unless (package-installed-p 'company)
  (package-install 'company))

(when (require 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'compilation-shell-minor-mode-hook (lambda() (company-mode -1)))
  (provide 'company-setup))
