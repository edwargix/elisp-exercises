
(defun simplified-end-of-buffer ()
  (interactive)
  (push-mark)
  (goto-char (point-max)))
 
(defun buffer-exists? (buffer-name)
  (interactive "B")
  (if (get-buffer buffer-name)
      (message "Buffer %s does exist." buffer-name)
    (message "Buffer %s does not exist." buffer-name)))
