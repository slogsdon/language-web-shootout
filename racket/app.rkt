#lang racket

(require "spin/main.rkt")

(get "/" (lambda () 
  "Hello World!"))

(run #:port 3000)
