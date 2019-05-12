;; projectile-setup

(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(when (require 'projectile)
  ;; (projectile-global-mode)
  (projectile-mode +1)
  ;; (setq projectile-enable-caching t)
  (setq projectile-indexing-method 'native); or 'alien, or 'hybrid
  (setq projectile-use-git-grep t)
  (setq projectile-file-exists-remote-cache-expire nil)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-completion-system 'ivy)
  (when (require 'counsel nil 'quiet);
    (require 'subr-x)
    (unless (package-installed-p 'counsel-projectile)
      (package-install 'counsel-projectile))
    (when (require 'counsel-projectile)
      (counsel-projectile-mode))
    )
  (provide 'projectile-setup)
  )
