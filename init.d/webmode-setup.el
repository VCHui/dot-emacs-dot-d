;; webmode-setup

(unless (package-installed-p 'web-mode)
  (package-install 'web-mode))

(when (package-installed-p 'web-mode)
  (add-hook
   'web-mode-hook
   (lambda()
     (setq indent-tabs-mode nil) ;; see basic-setup.el
     (setq web-mode-markup-indent-offset 2)
     (setq web-mode-css-indent-offset 2)
     (setq web-mode-code-indent-offset 2)
     (setq web-mode-attr-indent-offset 2)
     (setq web-mode-style-padding 0)
     (setq web-mode-script-padding 0)
     (setq web-mode-block-padding 0)
     ))
  (require 'web-mode)
  (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil))
  (setq
   auto-mode-alist
   (append
    '(("\\.html?\\'" . web-mode)
      ("\\.htm?\\'" . web-mode)
      ("\\.css?\\'" . web-mode)
      ("\\.json?\\'" . web-mode)
      ("\\.js?\\'" . web-mode)
      ("\\.jinja2?\\'" . web-mode)
      ("\\.jinja?\\'" . web-mode)
      )
    auto-mode-alist
    ))
  (provide 'webmode-setup)
  )
