;; gtags-setup

(unless (package-installed-p 'counsel-gtags)
  (package-install 'counsel-gtags))

(when (package-installed-p 'counsel-gtags)
  (add-hook 'c++-mode-hook 'counsel-gtags-mode)
  (add-hook 'c-mode-hook 'counsel-gtags-mode)
  (with-eval-after-load 'counsel-gtags
    (define-key counsel-gtags-mode-map
      (kbd "M-t") 'counsel-gtags-find-definition)
    (define-key counsel-gtags-mode-map
      (kbd "M-r") 'counsel-gtags-find-reference)
    (define-key counsel-gtags-mode-map
      (kbd "M-s") 'counsel-gtags-find-symbol))
  (provide 'gtags-setup)
  )
