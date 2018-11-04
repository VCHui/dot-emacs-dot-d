;; projectile-setup

(unless (package-installed-p 'projectile)
  (if (el-get-install 'projectile-0.14.0)
      (package-install-file
       (concat user-emacs-directory "el-get/projectile-0.14.0/projectile.el")))
  )

(when (package-installed-p 'projectile)
  (projectile-global-mode)
  (setq projectile-use-git-grep t)
  (if (package-installed-p 'counsel) ; installed in init.el
      (unless (package-installed-p 'counsel-projectile)
	(package-install 'counsel-projectile)))
  (when (package-installed-p 'counsel-projectile)
    (require 'counsel-projectile)
    (counsel-projectile-mode))
  (provide 'projectile-setup)
  )
