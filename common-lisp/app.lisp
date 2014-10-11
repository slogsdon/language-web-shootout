(ql:quickload :hunchentoot)
(defpackage :hello-web (:use :cl :hunchentoot))
(in-package :hello-web)
 
(define-easy-handler (hello :uri "/") () "Hello, World!")
 
(defparameter *server* 
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor 
    :access-log-destination nil
    :message-log-destination nil
    :port 3000)))