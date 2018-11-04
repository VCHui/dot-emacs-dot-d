;; ivy-swiper-counsel-setup

(unless (package-installed-p 'counsel)
  ;; depends: swiper, ivy
  (package-install 'counsel))

(when (package-installed-p 'counsel)
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-extra-directories nil)
  (setq enable-recursive-minibuffers t)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "C-h a") 'counsel-apropos)
  (global-set-key (kbd "C-h f") 'counsel-describe-function)
  (global-set-key (kbd "C-h v") 'counsel-describe-variable)
  (define-key ivy-minibuffer-map (kbd "C-j") 'ivy-next-line-and-call)
  (provide 'ivy-setup)
  )
