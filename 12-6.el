
(defun search-blank-lines()
  (interactive)
  (when (not (re-search-forward "\(^[:blank:]*\n?\)\{2,\}" nil t))
      (message "No sequence of 2+ blank lines found.")))

(re-search-forward "a\nb")

a
b


