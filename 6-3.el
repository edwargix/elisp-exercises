(defun display-first-60-chars (&optional buffer)
  (interactive)
  (save-excursion
    (with-current-buffer (or (and (bufferp buffer) buffer)
			     (current-buffer))
      (save-restriction
	(widen)
	(message (buffer-substring-no-properties (point-min) (1+ 60)))))))
