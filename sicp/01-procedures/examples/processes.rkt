#lang racket

;; Observable process traces for SICP 1.2.1.
;; This file intentionally contains working demonstrations, not exercise answers.

(define (factorial-rec n)
  (displayln (format "enter recursive: n=~a" n))
  (if (<= n 1)
      1
      (let ([result (* n (factorial-rec (sub1 n)))])
        (displayln (format "resume recursive: n=~a" n))
        result)))

(define (factorial-iter n)
  (define (step product counter)
    (displayln (format "iterative state: product=~a counter=~a" product counter))
    (if (> counter n)
        product
        (step (* product counter) (add1 counter))))
  (step 1 1))

(module+ main
  (displayln "=== recursive process ===")
  (displayln (format "result: ~a" (factorial-rec 4)))
  (newline)
  (displayln "=== iterative process ===")
  (displayln (format "result: ~a" (factorial-iter 4))))
