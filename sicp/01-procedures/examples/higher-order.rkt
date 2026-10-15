#lang racket
;; 고차 프로시저 예제: 실행하기 전 결과를 먼저 예상하세요.

(define (identity x) x)
(define (inc x) (+ x 1))
(define (square x) (* x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (accumulate combine initial term a next b)
  (if (> a b)
      initial
      (combine (term a)
               (accumulate combine initial term (next a) next b)))))

(module+ main
  (displayln (format "정수의 합: ~a" (sum identity 1 inc 5)))
  (displayln (format "제곱의 합: ~a" (sum square 1 inc 5)))
  (displayln (format "정수의 곱: ~a" (product identity 1 inc 5)))
  (displayln (format "일반화된 합: ~a" (accumulate + 0 identity 1 inc 5)))
  (displayln (format "뺄셈 결합 실험: ~a" (accumulate - 0 identity 1 inc 3))))
