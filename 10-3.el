
(push "i just deleted this text hell yeah" kill-ring)

(setq my-list '(a b c d))
(message (concat "1st: %s\n"
		 "2nd: %s\n"
		 "3rd: %s\n"
		 "4th: %s\n")
		 (car my-list)
		 (car (cdr my-list))
		 (car (nthcdr 2 my-list))
		 (car (nthcdr 3 my-list)))
