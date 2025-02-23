;; magit-diff-hl-setup

(unless (package-installed-p 'diff-hl) (package-install 'diff-hl))
(when (package-installed-p 'diff-hl-mode)
  (global-diff-hl-mode)
  (add-hook
   'find-file-hook
   (lambda()
     (diff-hl-margin-mode)
     )
   )
  )

(unless (package-installed-p 'magit) (package-install 'magit))
(when (package-installed-p 'magit)
  (when (package-installed-p 'diff-hl-mode)
    (add-hook 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
    )
  (provide 'magit-setup)
  )
