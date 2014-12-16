(defun go/gopath ()
  (getenv "GOPATH"))

(defun go/go-flycheck-path()
  (concat (go/gopath) "/src/github.com/dougm/goflymake"))

(defun go/enable-company-mode()
  (set (make-local-variable 'company-backends)
       '((company-go company-dabbrev-code)))
  (company-mode))

(defun go/enable-goflycheck()
  (add-to-list 'load-path (go/go-flycheck-path))
  (require 'go-flycheck))
