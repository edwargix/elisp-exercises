(setq birds (cons 'cardinal
		  (cons 'flamingo
			(cons 'penguin
			      '(peacock)))))
(setcar birds 'tuna)
(setcdr birds '(trout catfish shark))

birds
