(defun my-unfill-paragraph-filter (paragraph backend info)
  "Unfill paragraph contents by joining lines with spaces."
  (when (org-export-derived-backend-p backend 'md 'html)
    (let ((contents (org-element-contents paragraph)))
      (when (and contents (stringp (car contents)))
        (org-element-set-contents 
         paragraph 
         (list (replace-regexp-in-string 
                "\\([^\\n]\\)\\n\\([^\\n]\\)" "\\1 \\2" 
                (car contents)))))
      paragraph)))

(add-to-list 'org-export-filter-paragraph-functions 'my-unfill-paragraph-filter)

(defun my-unfill-paragraphs (backend)
  "Remove line breaks within paragraphs for export."
  (when (org-export-derived-backend-p backend 'md 'html 'latex)
    (goto-char (point-min))
    (while (re-search-forward "\\([^\\n]\\)\\n\\([^\\n*+-]\\)" nil t)
      (replace-match "\\1 \\2"))))

(add-hook 'org-export-before-processing-hook 'my-unfill-paragraphs)



(defun unfill-paragraph ()
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))
