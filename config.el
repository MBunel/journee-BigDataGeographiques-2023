(package-initialize)
(require 'org)
(require 'oc-basic)

(defun pd-html-publish-to-html (plist filename pub-dir)
  (org-publish-org-to 'pd-html filename ".html" plist pub-dir))


(setq org-publish-project-alist
      '(("Journee_BigData"
	 :base-directory "./src"
	 :publishing-directory "./"
	 :exclude "base.org"
	 :publishing-function org-html-publish-to-html
	 :auto-sitemap nil
)))

(org-mode)
(org-publish-project "Journee_BigData")
