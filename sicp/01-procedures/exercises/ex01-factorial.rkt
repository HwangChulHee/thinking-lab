#lang racket

;; Lab 01 practice scaffold. Fill the TODOs yourself.
;; Run: racket sicp/01-procedures/exercises/ex01-factorial.rkt

(define (factorial-rec n)
  (cond [(< n 0) (error 'factorial-rec "n must be nonnegative")]
        [(= n 0) 1]
        [else (error 'factorial-rec "TODO: implement the recursive process")]))

(define (factorial-iter n)
  (when (< n 0) (error 'factorial-iter "n must be nonnegative"))
  (define (step product counter)
    (error 'factorial-iter "TODO: implement the iterative process"))
  (step 1 1))

;; Replace TODOs first. These tests should fail until your implementation works.
(module+ test
  (require rackunit)
  (for ([n (in-range 0 8)])
    (define expected (for/fold ([acc 1]) ([k (in-range 1 (add1 n))]) (* acc k)))
    (check-equal? (factorial-rec n) expected)
    (check-equal? (factorial-iter n) expected)))

(module+ main
  (require rackunit)
  (displayln "Complete TODOs, then run: racket -l raco test sicp/01-procedures/exercises/ex01-factorial.rkt"))
