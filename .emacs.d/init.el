(require 'package)


;; Add melpa to package archives.
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Install and configure Evil
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil-collection evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(blink-cursor-mode 0)

(use-package spacemacs-theme
  :ensure t
  :init
  (load-theme 'spacemacs-dark t)) ; or 'spacemacs-light

(with-eval-after-load 'org
  (set-face-attribute 'org-document-title nil :weight 'bold :height 1.3)
  (set-face-attribute 'org-level-1 nil :weight 'bold :height 1.2)
  (set-face-attribute 'org-level-2 nil :weight 'semi-bold :height 1.1)
  (set-face-attribute 'org-level-3 nil :weight 'normal)
  (set-face-attribute 'org-level-4 nil :weight 'light)
  ;; ... you can continue for org-level-5, org-level-6, etc.

  (set-face-attribute 'org-todo nil :weight 'bold :box '(:line-width 2 :color "grey"))
  (set-face-attribute 'org-done nil :weight 'bold :box '(:line-width 2 :color "grey"))
  ;; ... and other org face customizations.
)
