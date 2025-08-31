;; Bootstrap Straight
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Local plugins and scripts
(setq local-scripts-dir "~/.config/emacs/local-lisp")
(if (equal (file-readable-p local-scripts-dir) nil) ;; If the scripts dir does not exist or is not readable
    (make-directory local-scripts-dir)) ;; Then create it
;; Tell emacs where to find local lisp
(add-to-list 'load-path  local-scripts-dir)
(let ((default-directory local-scripts-dir))
    (normal-top-level-add-subdirs-to-load-path))

(blink-cursor-mode 0) ;; Solid cursor, not blinking
(tool-bar-mode 0) ;; Remove toolbar
(scroll-bar-mode 0) ;; Remove scrollbars
(menu-bar-mode 0) ;; Remove menu bar
(which-key-mode 1)
(which-key-setup-side-window-right-bottom)

;; Line Numbers
(setq-default display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Meow :3 (yes we're using evil, but meow is nice for emacs pinky reasons)
;;(defun meow-setup ()
;;  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
;;  (meow-motion-define-key
;;    '("j" . meow-next)
;;    '("k" . meow-prev)
;;    '("<escape>" . ignore))
;;  (meow-leader-define-key
;;    ;; Use SPC (0-9) for digit arguments.
;;    '("1" . meow-digit-argument)
;;    '("2" . meow-digit-argument)
;;    '("3" . meow-digit-argument)
;;    '("4" . meow-digit-argument)
;;    '("5" . meow-digit-argument)
;;    '("6" . meow-digit-argument)
;;    '("7" . meow-digit-argument)
;;    '("8" . meow-digit-argument)
;;    '("9" . meow-digit-argument)
;;    '("0" . meow-digit-argument)
;;    '("/" . meow-keypad-describe-key)
;;    '("?" . meow-cheatsheet))
;;  )
;;(straight-use-package 'meow)
;;(require 'meow)

(setq treesit-language-source-alist
   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
     (cmake "https://github.com/uyha/tree-sitter-cmake")
     (css "https://github.com/tree-sitter/tree-sitter-css")
     (elisp "https://github.com/Wilfred/tree-sitter-elisp")
     (go "https://github.com/tree-sitter/tree-sitter-go")
     (html "https://github.com/tree-sitter/tree-sitter-html")
     (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
     (json "https://github.com/tree-sitter/tree-sitter-json")
     (make "https://github.com/alemuller/tree-sitter-make")
     (markdown "https://github.com/ikatyang/tree-sitter-markdown")
     (python "https://github.com/tree-sitter/tree-sitter-python")
     (toml "https://github.com/tree-sitter/tree-sitter-toml")
     (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
     (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
     (yaml "https://github.com/ikatyang/tree-sitter-yaml")))

;; Catppuccin my beloved
(straight-use-package 'catppuccin-theme)
(setq catppuccin-flavor 'frappe)
(load-theme 'catppuccin :no-confirm)

;; Font-y stuff
(let '(mononoki "Mononoki Nerd Font")
  (when (member mononoki (font-family-list))
  (set-face-attribute 'default nil :font mononoki :height 108)
  (set-face-attribute 'fixed-pitch nil :family mononoki)))

;; Bram for life
(straight-use-package 'evil)
(require 'evil)
(evil-mode 1)

;; Rainbow Brackets
(straight-use-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

