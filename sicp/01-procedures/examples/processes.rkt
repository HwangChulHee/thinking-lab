#lang racket

;; SICP §1.2.1: 계산 과정의 모습을 출력으로 관찰하는 예제.
;; 이 파일은 정답을 감추는 연습문제가 아니라 실행 가능한 시연 코드입니다.

(define (factorial-rec n)
  (displayln (format "재귀 과정 진입: n=~a" n))
  (if (<= n 1)
      1
      (let ([result (* n (factorial-rec (sub1 n)))])
        (displayln (format "재귀 과정 복귀: n=~a" n))
        result)))

(define (factorial-iter n)
  (define (step product counter)
    (displayln (format "반복 과정 상태: 곱=~a 카운터=~a" product counter))
    (if (> counter n)
        product
        (step (* product counter) (add1 counter))))
  (step 1 1))

(module+ main
  (displayln "=== 재귀적 계산 과정 ===")
  (displayln (format "결과: ~a" (factorial-rec 4)))
  (newline)
  (displayln "=== 반복적 계산 과정 ===")
  (displayln (format "결과: ~a" (factorial-iter 4))))
