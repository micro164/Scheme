;;Calculates the factorial of a number
(define (fact n)
    (cond ((<= n 1) 1)
          (#t     (* n (fact (- n 1)))
          )
    )          
)

;;my version of map
(define (mymap f L)
   (cond ((null? L)   L)
         (#t          (cons (f (car L)) (mymap f (cdr L))))
    )
)

;;returns the length of the list (even if improper)
(define len (lambda (L))
    (cond   ((null? L)  0)
            ((not (pair? L))    1)
            (#t    (+ 1 (len (cdr L))))
    )
)

;;Returns the last element of the list
(define (last L)
    (cond ((null? L)    L)
          ((not (pair? L))   L)
          ((null? (cdr L))  (car L))
          (#t     (last (cdr L)))
    )
)

;;Returns all the elements of the list but the last one
(define (allbutlast L)
    (cond ((null? L)    L)
          ((not (pair? L)   '()))
          ((null? (cdr L)   '()))
          (#t     (cons (car L) (allbutlast (car L))))
    )
)

;;Reversing a list
(define (rev L)
    (define (rev2 L M)
        (cond ((null? L)    M)
              (#t           (rev2 (cdr L) (cons (car L) M)))
        )
    )
)


;;Defines a variable for scheme
(define (makebox (cons 'box '())))
(define (setbox B X) (set-cdr! B X))
(define (getbox B) (cdr B))
(define (box? B)
    (cond ((not (pair? B))  #f)
          (#t               (eq? (car B) 'box))
    )
)