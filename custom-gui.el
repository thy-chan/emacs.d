(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(codeium/metadata/api_key "2d487642-54f2-4cfa-936d-ed07baec760b")
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "flatpak")
	  tramp-container-connection-local-default-flatpak-profile)
	 ((:application tramp :machine "localhost")
	  tramp-connection-local-darwin-ps-profile)
	 ((:application tramp :machine "Chan-Mac16.local")
	  tramp-connection-local-darwin-ps-profile)
	 ((:application tramp)
	  tramp-connection-local-default-system-profile tramp-connection-local-default-shell-profile)
	 ((:application eshell)
	  eshell-connection-default-profile)))
 '(connection-local-profile-alist
   '((tramp-container-connection-local-default-flatpak-profile
	  (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin" "/usr/bin" "/sbin" "/usr/sbin" "/usr/local/bin" "/usr/local/sbin" "/local/bin" "/local/freeware/bin" "/local/gnu/bin" "/usr/freeware/bin" "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin" "/opt/sbin" "/opt/local/bin"))
	 (tramp-connection-local-darwin-ps-profile
	  (tramp-process-attributes-ps-args "-acxww" "-o" "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state=abcde" "-o" "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
	  (tramp-process-attributes-ps-format
	   (pid . number)
	   (euid . number)
	   (user . string)
	   (egid . number)
	   (comm . 52)
	   (state . 5)
	   (ppid . number)
	   (pgrp . number)
	   (sess . number)
	   (ttname . string)
	   (tpgid . number)
	   (minflt . number)
	   (majflt . number)
	   (time . tramp-ps-time)
	   (pri . number)
	   (nice . number)
	   (vsize . number)
	   (rss . number)
	   (etime . tramp-ps-time)
	   (pcpu . number)
	   (pmem . number)
	   (args)))
	 (tramp-connection-local-busybox-ps-profile
	  (tramp-process-attributes-ps-args "-o" "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "stat=abcde" "-o" "ppid,pgid,tty,time,nice,etime,args")
	  (tramp-process-attributes-ps-format
	   (pid . number)
	   (user . string)
	   (group . string)
	   (comm . 52)
	   (state . 5)
	   (ppid . number)
	   (pgrp . number)
	   (ttname . string)
	   (time . tramp-ps-time)
	   (nice . number)
	   (etime . tramp-ps-time)
	   (args)))
	 (tramp-connection-local-bsd-ps-profile
	  (tramp-process-attributes-ps-args "-acxww" "-o" "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
	  (tramp-process-attributes-ps-format
	   (pid . number)
	   (euid . number)
	   (user . string)
	   (egid . number)
	   (group . string)
	   (comm . 52)
	   (state . string)
	   (ppid . number)
	   (pgrp . number)
	   (sess . number)
	   (ttname . string)
	   (tpgid . number)
	   (minflt . number)
	   (majflt . number)
	   (time . tramp-ps-time)
	   (pri . number)
	   (nice . number)
	   (vsize . number)
	   (rss . number)
	   (etime . number)
	   (pcpu . number)
	   (pmem . number)
	   (args)))
	 (tramp-connection-local-default-shell-profile
	  (shell-file-name . "/bin/sh")
	  (shell-command-switch . "-c"))
	 (tramp-connection-local-default-system-profile
	  (path-separator . ":")
	  (null-device . "/dev/null"))
	 (eshell-connection-default-profile
	  (eshell-path-env-list))))
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "14850c68376012a083ed7ec9d36179962b165cd8f7536f021ee3b6f5cb68aa3c" "3a2f8087795a6a06d5a57cec6569dbbb98211f86ae3ad9ce931a5a3340b32569" default))
 '(ivy-mode t)
 '(package-selected-packages
   '(smart-mode-line undo-tree rainbow-delimiters lsp-ivy lsp-ui lsp-mode yaml-mode counsel-projectile projectile flycheck company-box company mwim ace-window avy counsel hydra cargo rust-mode multiple-cursors highlight-symbol which-key yasnippet magit lsp-treemacs treemacs-projectile treemacs chatgpt-shell org-ref org-roam org-ref-ivy org-ref-bib helpful meow flycheck-clang-tidy csv-mode queue cider cmake-mode clang-format pyvenv-mode pyvenv lsp-pyright tiny yasnippet-snippets dirvish good-scroll use-package-hydra embark marginalia exec-path-from-shell gnu-elpa-keyring-update fullframe seq amx dap-mode projectile-ripgrep dashboard rainbow-mode pdf-tools auctex))
 '(ring-bell-function 'ignore)
 '(safe-local-variable-values
   '((TeX-master quote dwim)
	 (TeX-master concat
				 (projectile-project-root)
				 "bifrost")
	 (TeX-engine . pdflatex)
	 (eval dap-register-debug-template "NS3::Debug"
		   (list :type "lldb-vscode" :cwd
				 (projectile-project-root)
				 :request "launch" :program
				 (lambda nil
				   (read-file-name "Select file to debug: "))
				 :name "NS3::Debug"))
	 (eval dap-register-debug-template "NS3::Debug"
		   (list :type "lldb-vscode" :cwd
				 (projectile-project-root)
				 :request "launch" :program "build/scratch/ns3.36.1-dumbell-debug" :name "NS3::Debug"))
	 (flycheck-clang-include-path list
								  (concat "-I"
										  (projectile-project-root)
										  "build/include/"))
	 (py-indent-offset . 4)
	 (flycheck-clang-include-path list concat "-I"
								  (projectile-project-root)
								  "include")
	 (flycheck-clang-include-path list
								  (concat "-I"
										  (projectile-project-root)
										  "build/include"))
	 (c-file-style . gnu)
	 (flycheck-clang-include-path list
								  (concat "-I"
										  (projectile-project-root)
										  "build"))))
 '(visible-bell nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-selection ((t (:extend t :background "gray45" :weight normal))))
 '(dashboard-heading ((t (:foreground "light slate blue"))))
 '(dashboard-items-face ((t (:foreground "light gray"))))
 '(dashboard-no-items-face ((t (:foreground "light gray"))))
 '(dashboard-text-banner ((t (:foreground "magenta"))))
 '(ivy-current-match ((t (:extend t :background "#7a7d8b"))))
 '(ivy-org ((t (:foreground "sienna1" :slant italic))))
 '(lsp-face-highlight-read ((t (:background "#6a6d7b"))))
 '(lsp-face-highlight-textual ((t (:background "gray21"))))
 '(org-agenda-date ((t (:foreground "SkyBlue1" :weight normal))))
 '(org-agenda-date-today ((t (:foreground "CadetBlue1" :weight bold))))
 '(org-agenda-date-weekend ((t (:foreground "SteelBlue3" :weight normal))))
 '(org-agenda-structure ((t (:foreground "MediumPurple2" :weight normal))))
 '(org-warning ((t (:foreground "IndianRed1"))))
 '(region ((t (:extend t :background "gray24"))))
 '(show-paren-match ((t (:background "gray89" :foreground "light slate blue" :weight normal))))
 '(tooltip ((t (:background "gray30" :foreground "#eaf2f1")))))
