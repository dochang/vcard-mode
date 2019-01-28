;;; vcard-mode.el --- Major mode for vCard files.

;; Copyright (C) 2012 Desmond O. Chang

;; Author: Desmond O. Chang <dochang@gmail.com>
;; Version: 0.1.0
;; Keywords: files

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This package provides a major mode to edit vCard files.

;; To install it, put this file under your load path.  Then add the
;; following to your .emacs file:

;;  (require 'vcard-mode)

;; Or if you don't want to load it until editing a vCard file:

;;  (autoload 'vcard-mode "vcard-mode" "Major mode for vCard files" t)
;;  (add-to-list 'auto-mode-alist '("\\.vc\\(f\\|ard\\)\\'" . vcard-mode))

;;; Code:

(require 'generic)

(defun vcard-mode-init ()
  (set (make-local-variable 'paragraph-start) "BEGIN:VCARD"))

;;;###autoload
(define-generic-mode vcard-mode
  '()
  nil
  '(("^BEGIN:VCARD" . font-lock-function-name-face)
    (";[^:\n]+:" . font-lock-type-face)
    ("^\\([^;:\n]+\\):?" . font-lock-keyword-face))
  '("\\.\\(vcf\\|vcard\\)\\'")
  '(vcard-mode-init)
  "Generic mode for vCard files.")

(provide 'vcard-mode)

;;; vcard-mode.el ends here
