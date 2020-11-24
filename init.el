;put this in ~/.emacs.d/init.el
; nb to initialise this file, just type M-x eval-buffer

(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(package-install 'flycheck)

(global-flycheck-mode)

; display line numbers
(global-linum-mode 1) 

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)

; auto complete
; (use-package auto-complete
;   :ensure t
;   :init
;   (progn
;     (ac-config-default)
;     (global-auto-complete-mode t)
;     ))

; good for copy and paste off the web
(electric-indent-mode 0)

; must do 
;pip install pep8 
;pip install flake8
;M-x package-refresh-contents
;for the below lines to work as well as M-x package-install RET elpy RET
(defvar myPackages
  '(better-defaults
    elpy ;; add the elpy package
    material-theme))
(elpy-enable)

; delete trailing white space
(add-hook 'elpy-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'delete-trailing-whitespace nil t)))

; scroll one line
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

; the below removes annoying virtial lines
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:italic nil :foreground "DarkOrchid")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package flycheck elpy))))
