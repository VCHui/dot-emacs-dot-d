;; company-setup

(unless (package-installed-p 'company)
  (package-install 'company))

(when (package-installed-p 'company)
  (require 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (provide 'company-setup)
  )
