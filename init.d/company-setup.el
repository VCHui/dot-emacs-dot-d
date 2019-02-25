;; company-setup

(el-get 'sync 'company-mode-0.9.9)

(when (require 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (provide 'company-setup)
  )
