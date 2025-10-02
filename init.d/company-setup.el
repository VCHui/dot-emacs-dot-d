;; company-setup

(unless (package-installed-p 'company)
  (package-install 'company))

(when (require 'company)
  (add-hook
   'after-init-hook 'global-company-mode)
  (add-hook
   'compilation-shell-minor-mode-hook
   (lambda() (company-mode -1)))
  (setq company-dabbrev-downcase nil
	company-idle-delay 0)
  (provide 'company-setup))
