;;Author: Jonathon Bryant
;;Date: 11/9/16
;;Representation of a queue using the basics of scheme

;;Checks if a Queue is empty
(define (empty_queue Q)
        (cond 
        ((and (pair? Q) (equal? (car Q) 'queue) (equal? (cdr Q) '())) #t)
        (#t         #f)
        )
)

;;Checks if something is a queue
(define (Queue? Q)
        (and (pair? Q) (equal? (car Q) 'queue))  #t
)

;;returns the front element of the queue
(define (front Q) (car (cdr Q)))

;;returns the back element of the queue
(define (back Q) (car (reverse (cdr Q))))

;;removes an element from the front of a queue
(define (pop! Q)
        (set-cdr! Q (cdr (cdr Q)))
)

;;adds an element to the back of the queue
(define (push! Q x)
        (set-cdr! Q (reverse (cons x (reverse (cdr Q)))))
)

;;counts the number of elements in the queue
(define (Qlength Q)
   (if (null? Q) -1
         (+ 1      (Qlength  (cdr Q)))
   )
)

;;makes an empty queue
(define make_queue (cons 'queue '()))

;;Create a Queue for testing
(define tQueue '(queue 1 2 3))