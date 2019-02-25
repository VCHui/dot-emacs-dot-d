;; projectile-setup

(el-get 'sync 'projectile-0.14.0)

(when (require 'projectile)
  (projectile-global-mode)
  ;; (setq projectile-enable-caching t)
  (setq projectile-indexing-method 'git)
  (setq projectile-use-git-grep t)
  (setq projectile-file-exists-remote-cache-expire nil)

  (when (require 'counsel nil 'quiet); without counsel
    (el-get 'sync 'counsel-projectile-0.2.0)
    (when (require 'counsel-projectile)
      (counsel-projectile-mode)
      (setq projectile-completion-system 'ivy)
      )
    )

  (provide 'projectile-setup)
  )
