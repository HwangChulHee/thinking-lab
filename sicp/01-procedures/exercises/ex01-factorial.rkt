#lang racket

;; 실습 01: 팩토리얼 구현용 뼈대 코드입니다.
;; TODO를 직접 채우세요. 의도적으로 해답은 제공하지 않습니다.
;; 테스트: raco test sicp/01-procedures/exercises/ex01-factorial.rkt

(define (factorial-rec n)
  (cond [(< n 0) (error 'factorial-rec "n은 0 이상이어야 합니다")]
        [(= n 0) 1]
        [else (error 'factorial-rec "TODO: 재귀적 계산 과정을 구현하세요")]))

(define (factorial-iter n)
  (when (< n 0) (error 'factorial-iter "n은 0 이상이어야 합니다"))
  (define (step product counter)
    (error 'factorial-iter "TODO: 반복적 계산 과정을 구현하세요"))
  (step 1 1))

;; TODO를 구현하기 전까지는 테스트가 실패하는 것이 정상입니다.
(module+ test
  (require rackunit)
  (for ([n (in-range 0 8)])
    (define expected (for/fold ([acc 1]) ([k (in-range 1 (add1 n))]) (* acc k)))
    (check-equal? (factorial-rec n) expected)
    (check-equal? (factorial-iter n) expected)))

(module+ main
  (displayln "TODO 구현 후 raco test 명령어로 테스트하세요."))
