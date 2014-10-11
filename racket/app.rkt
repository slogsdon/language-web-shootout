#lang racket
(require web-server/servlet 
         web-server/servlet-env)

(define (start req) (response/xexpr "Hello, World!"))

(serve/servlet start 
  #:port 3000 
  #:servlet-path "/"
  #:stateless? #t
  #:command-line? #t)