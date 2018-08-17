(defun greater-than-fill-column? (&optional arg)
  (interactive "P")
  (or (and arg (setq arg (prefix-numeric-value arg)))
      (setq arg 56))
  (if (> arg fill-column)
      (progn (message "Argument (%d) is greater than fill-column (%d)."
		      arg fill-column)
	     t)
    (progn (message "Argument (%d) is not greater than fill-column (%d)."
		    arg fill-column)
	   nil)))

(greater-than-fill-column? 70)
