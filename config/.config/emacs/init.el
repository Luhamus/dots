(org-babel-load-file (expand-file-name "~/.config/emacs/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-irony ag yasnippet-snippets yasnipets-snipets yasnippet flycheck ccls swiper smex ido-vertical-mode which-key lsp-pyright emmet-mode lsp-mode company magit projectile org-bullets key-chord evil-collection evil diminish all-the-icons doom-modeline dashboard afternoon-theme use-package))
 '(safe-local-variable-values
   '((eval setq flycheck-clang-include-path
		   (list
			(expand-file-name "~/code/kool/C/projektorinjo/inc"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
