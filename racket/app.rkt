#lang racket

(require "main.rkt")

(get "/" (lambda () 
  "Hello World!"))

(run #:port 3000)
