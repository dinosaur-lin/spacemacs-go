(defvar go-packages
  '(
    go-mode
    company
    company-go
    ))

(defvar go-excluded-packages '()
  "List of packages to exclude.")


(defun go/init-go-mode ()
  (use-package go-mode
    :defer t
    :init
    (progn
      (add-hook 'before-save-hook 'gofmt-before-save)
      (add-hook 'go-mode-hook (lambda ()
                                (auto-complete-mode -1)
                                (go/enable-company-mode)
                                (go/enable-goflycheck)))
      (require 'go-mode-autoloads))))
