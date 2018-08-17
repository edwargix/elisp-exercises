
(defun square-triangle-row (nrows)
  (let ((sum 0))
    (while (> nrows 0)
      (setq sum (+ sum (* nrows nrows)))
      (setq nrows (1- nrows)))
    sum))

;; same as factorial!
(defun multiply-triangle-rows (nrows)
  (let ((product 1))
    (while (> nrows 0)
      (setq product (* product nrows))
      (setq nrows (1- nrows)))
    product))

(defun square-triangle-row (nrows)
  (cond
   ((> nrows 0)
    (+ (* nrows nrows) (square-triangle-row (1- nrows))))
   (t 0)))

(defun multiply-triangle-rows (nrows)
  (cond
   ((> nrows 1)
    (* nrows (multiply-triangle-rows (1- nrows))))
   (t 1)))

(defun create-dfn-index-entries ()
  (interactive)
  (save-excursion
    (let (end (dfns '()))
      (forward-paragraph)
      (setq end (point))
      (forward-paragraph -1)
      (while (search-forward "@dfn{" end t)
	(push (buffer-substring (point)
				(1- (search-forward "}" end nil)))
	      dfns))
      (dolist (dfn dfns nil)
	(forward-paragraph -1)
	(insert (format "\n@cindex %s"
			(replace-regexp-in-string "\n" " "
			dfn)))))))
