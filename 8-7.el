(defun test-search (str)
  (interactive "sString: ")
  (if (search-forward str nil nil 1)
      (message "Found!")))

(defun print-3rd-element-in-kill-ring ()
  (interactive)
  (message (car (nthcdr 2 kill-ring))))
