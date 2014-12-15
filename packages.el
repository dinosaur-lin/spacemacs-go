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
      (add-hook 'before-save-hook #'gofmt-before-save)
      (add-hook 'go-mode-hook 'company-mode)
      (add-hook 'go-mode-hook (lambda ()
                               (set (make-local-variable 'company-backends) '(company-go :with company-dabbrev-code))
                               (company-mode)))
      (add-hook 'go-mode-hook (lambda ()
                                (auto-complete-mode -1)))
;      (require 'go-autocomplete)
;      (require 'auto-complete-config)
      (require 'go-mode-autoloads))))
