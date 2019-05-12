;; basic-setup

(show-paren-mode t)
(setq show-paren-style 'expression)
(add-hook 'find-file-hook (lambda() (ruler-mode t)))
(add-hook 'find-file-hook (lambda() (linum-mode t)))
(add-hook
 'before-save-hook
 (lambda()
   (delete-trailing-whitespace)
   (when (not indent-tabs-mode) (untabify (point-min) (point-max))))
 )

;; theme-setup
(if (not (display-graphic-p))
    (if (member 'tango-dark-default-none (custom-available-themes))
	(load-theme 'tango-dark-default-none t)
      (load-theme 'tango-dark))
  (load-theme 'tango-dark)
  (tool-bar-mode 0)
  ;; (add-hook 'find-file-hook (lambda() (linum-mode 1)))
  )
