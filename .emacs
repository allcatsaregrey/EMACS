;; Setup package repos

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

;; Configure the meta key properly

(setq x-alt-keysym 'meta)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("13fa7a304bd53aa4c0beec4c25c4f811de499bce9deb326798265ed0015b3b78" default)))
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   (quote
    (bongo org-bullets which-key-posframe evil elpy auctex pdf-tools exwm emms edit-indirect ## markdown-mode dracula-theme)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 101 :width normal)))))

;; Basic appearance stuff
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(fringe-mode 1)
(display-time-mode t)
(global-display-line-numbers-mode 0)
(setq-default fill-column 80)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Package setup
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(require 'ox-html)
(customize-set-value 'org-latex-with-hyperref nil)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(elpy-enable)
;; (require 'exwm)
;; (require 'exwm-config)
;; (exwm-config-default)

;; Agenda setup
(setq org-agenda-files (list "~/Code/Org/personal.org"))

;; Setup Gantt charts
(add-to-list 'load-path "~/.emacs.d/extra/")
(require 'ox-taskjuggler)
(add-to-list 'org-export-backends 'taskjuggler)

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Enable Which Key
(require 'which-key)
(which-key-mode)

;; Moving between buffers
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

