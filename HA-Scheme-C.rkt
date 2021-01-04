; Abgabeaufgabe - Scheme C
; Author: Chris Boesener - InfB III
; Date: 04.01.2021

#lang racket

(define (zinsfunktion kapital zins dauer)(* (expt(+ 1 zins) dauer) kapital))

(define (endKapital kapital dauer)
  (cond [(<= dauer 1)  (zinsfunktion kapital 0.0025 dauer)]
        [(< dauer 3)  (zinsfunktion kapital 0.05 dauer )]
        [(<= dauer 5) (zinsfunktion kapital 0.01 dauer )]
        [(<= dauer 10)(zinsfunktion kapital 0.015 dauer )]
        [else (zinsfunktion kapital 0.018 dauer )]))


(define (ausgabe start ende kapital)
  (cond [(<= start ende) (display "Jahr ") (display start) (display ": ")
                         (display (endKapital kapital start)) (display " Euro ") (newline)
                         (ausgabe (+ start 1) ende kapital)] 
        [else (display "Ende" )(newline)]))



(ausgabe 1 12 5000)


        