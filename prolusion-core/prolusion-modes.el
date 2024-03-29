;; Version: $Id$
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(prolusion-require-package 'cmake-mode)
(prolusion-require-package 'csharp-mode)
(prolusion-require-package 'markdown-mode)
(prolusion-require-package 'json-mode)
(prolusion-require-package 'qml-mode)
(prolusion-require-package 'rbenv)

(add-to-list 'auto-mode-alist '("\\.json$"   . json-mode))
(add-to-list 'auto-mode-alist '("qmldir$"    . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.pr[io]$" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.qml$"    . qml-mode))
(add-to-list 'auto-mode-alist '("\\.qrc$"    . cml-mode))
(add-to-list 'auto-mode-alist '("\\.qs$"     . javascript-mode))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun info-mode ()
  (interactive)
  (let ((file-name (buffer-file-name)))
    (kill-buffer (current-buffer))
    (info file-name)))

(add-to-list 'auto-mode-alist '("\\.info\\'" . info-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'prolusion-modes)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; prolusion-modes.el ends here
