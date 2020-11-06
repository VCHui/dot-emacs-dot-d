;; python-setup

(unless (package-installed-p 'python-mode)
  (package-install 'python-mode))

(when (package-installed-p 'company)
  (unless (package-installed-p 'company-jedi)
    (package-install 'company-jedi)))

(when (package-installed-p 'python-mode)
  (add-hook
   'python-mode-hook
   (lambda()
     (setq py-indent-paren-spanned-multilines-p nil)
     (when (package-installed-p 'company-jedi)
       (add-to-list 'company-backends 'company-jedi)
       (setq jedi:setup-keys t)
       (if (getenv "VIRTUAL_ENV")
	   (setq jedi:environment-root (getenv "VIRTUAL_ENV"))
	 (if (getenv "CONDA_PREFIX")
	     (setq jedi:environment-root (getenv "CONDA_PREFIX"))))
       (setq jedi:complete-on-dot t))))
  (require 'python-mode)
  (provide 'python-setup))
