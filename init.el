;put this in ~/.emacs.d/init.el                                                                                                  ;put this in ~/.emacs.d/init.el                                                                                                                                                                                                                                                            
; nb to initialise this file, just type M-x eval-buffer                                                                                                                                                                                                                                    

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(add-hook 'python-mode-hook 'flycheck-mode)
(eval-when-compile
  (require 'use-package))
(require 'bind-key)

;auto complete                                                                                                                                                                                                                                                                             
(use-package auto-complete
  :ensure t
  :init
   (progn
     (ac-config-default)
     (global-auto-complete-mode t)
     ))

; good for copy and paste off the web                                                                                                                                                                                                                                                      
(electric-indent-mode 0)

; must do                                                                                                                                                                                                                                                                                  
;pip install pep8                                                                                                                                                                                                                                                                          
;pip install flake8                                                                                                                                                                                                                                                                        
;M-x package-refresh-contents                                                                                                                                                                                                                                                              
;for the below lines to work as well as M-x package-install RET elpy RET                                                                                                                                                                                                                   
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

 ;; custom-set-variables was added by Custom.                                                                                                                                                                                                                                              
 ;; If you edit it by hand, you could mess it up, so be careful.                                                                                                                                                                                                                           
 ;; Your init file should contain only one such instance.                                                                                                                                                                                                                                  
 ;; If there is more than one, they won't work right.                                                                                                                                                                                                                                      
;; Configure flymake for Python                                                                                                                                                                                                                                                            
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "epylint" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))

;; Set as a minor mode for Python                                                                                                                                                                                                                                                          
(add-hook 'python-mode-hook '(lambda () (flymake-mode)))                                                                                                                                                                                                                                   

                                                                                                                                                          
; nb to initialise this file, just type M-x eval-buffer                                                                                                                                                                                                                                    

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(add-hook 'python-mode-hook 'flycheck-mode)
(eval-when-compile
  (require 'use-package))
(require 'bind-key)

;auto complete                                                                                                                                                                                                                                                                             
(use-package auto-complete
  :ensure t
  :init
   (progn
     (ac-config-default)
     (global-auto-complete-mode t)
     ))

; good for copy and paste off the web                                                                                                                                                                                                                                                      
(electric-indent-mode 0)

; must do                                                                                                                                                                                                                                                                                  
;pip install pep8                                                                                                                                                                                                                                                                          
;pip install flake8                                                                                                                                                                                                                                                                        
;M-x package-refresh-contents                                                                                                                                                                                                                                                              
;for the below lines to work as well as M-x package-install RET elpy RET                                                                                                                                                                                                                   
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

 ;; custom-set-variables was added by Custom.                                                                                                                                                                                                                                              
 ;; If you edit it by hand, you could mess it up, so be careful.                                                                                                                                                                                                                           
 ;; Your init file should contain only one such instance.                                                                                                                                                                                                                                  
 ;; If there is more than one, they won't work right.                                                                                                                                                                                                                                      
;; Configure flymake for Python 
;;https://pylint.pycqa.org/en/v2.11.1/user_guide/ide-integration.html
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "epylint" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))

;; Set as a minor mode for Python                                                                                                                                                                                                                                                          
(add-hook 'python-mode-hook '(lambda () (flymake-mode)))                                                                                                                                                                                                                                   
