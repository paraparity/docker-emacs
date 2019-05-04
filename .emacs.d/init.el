
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")))
(package-initialize)

(let ((pkgs-to-install
       (seq-remove 'package-installed-p '(use-package))))
  (when pkgs-to-install
    (package-refresh-contents)
    (dolist (pkg pkgs-to-install)
      (package-install pkg))))

(use-package org
  :ensure org-plus-contrib)

(use-package org-contacts
  :ensure nil
  :after org
  :custom (org-contacts-files '("~/.personal/agenda/contacts.org")))
