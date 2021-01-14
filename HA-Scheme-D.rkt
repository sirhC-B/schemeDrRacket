; Abgabeaufgabe - Scheme D
; Author: Chris Boesener - InfB III
; Date: 14.01.2021
#lang racket

;hilfsfunktion
(define (element e liste)
  (cond [(null? liste) #f]
        [(= e (car liste)) #t]
        [else (element e (cdr liste))]))


;loeschen eines elements
(define (loeschen X liste)
 (cond [(null? liste) liste]
        [(= X (car liste))(cdr liste)]
        [else (cons (car liste)(loeschen X (cdr liste)))]))


;loeschen aller elemente
(define (loeschen_alle X liste)
 (cond  [(element X liste) (loeschen_alle X (loeschen X liste))]
        [else liste]))
    

;tests
(loeschen 3 '(1 2 3 3 4 5 6))
(loeschen 2 '())
(loeschen 4 '(1 2 3))

(loeschen_alle 3 '(1 3 1 3 1 3))
(loeschen_alle 1 '(2 3 4 5 6))
(loeschen_alle 4 '())
