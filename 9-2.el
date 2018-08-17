
(setq flowers '(voilet buttercup))
(setq more-flowers (cons 'calla (cons 'rose flowers)))
(setcar flowers 'tuna)
;; end up with '(calla rose tuna buttercup)
