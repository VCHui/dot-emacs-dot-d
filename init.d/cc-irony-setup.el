;; irony-cc-setup

(unless (package-installed-p 'company-irony); + company, irony
  (package-install 'company-irony)
  (unless (package-installed-p 'company-irony-c-headers)
    (package-install 'company-irony-c-headers)))

(require 'cc-mode)

(when (package-installed-p 'company-irony)
  (require 'irony)
  (require 'company-irony)
  (when (package-installed-p 'company-irony-c-headers)
    (require 'company-irony-c-headers))
  (eval-after-load 'company
    '(add-to-list
      'company-backends
      '(company-irony-c-headers company-irony)))
  (add-hook 'c-mode-common-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  (unless (irony--find-server-executable)
    (call-interactively #'irony-install-server))
  (provide 'cc-irony-setup)
  )
