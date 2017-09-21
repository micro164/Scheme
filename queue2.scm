;;Author: Jonathon Bryant
;;Date: 11/12/16
;;Representation of a queue using the basics of scheme

;;Making an empty queue
(define makeQ (cons 'queue (cons '() '())))

;;Checks if something is a queue
(define (Queue? Q)
        (and (pair? Q) (equal? (car Q) 'queue))  #t
)

;;Checks if a Queue is empty
(define (Qempty? Q)
        (cond 
            ((not (Queue? Q))   #t)
            (#t                 (null? (cadr Q)))
        )
)

;;returns the front element of the queue
(define (front Q) (car (car (cdr Q))))

;;returns the back element of the queue
(define (back Q) (cddr Q))

;;Puting an element of the back of the queue
(define (enqueue! Q x)
        (let ((new  (cons x '())))
             (cond  ((Qempty? Q)     (set-car! (cdr Q) new)
                                    (set-cdr! (cdr Q) new)
                    )
                    (#t             (set-cdr! (cddr Q) new)
                                    (set-cdr! (cdr Q) new)
                    )
             )
        )
)

;;Removes element from front of Queue
(define (dequeue! Q)
        (let ((front '()))      
        (cond ((Qempty? Q)      (display "Queue Empty!"))
              (#t             (set! front (car (car (cdr Q))))
                                (set-car! (cdr Q) (cdr (car (cdr Q))))
                                (if (Qempty? Q) (set-cdr! (cdr Q) '()))
               )
        )
        front
        )
)
