;;Creates a Stack
(define Stack (cons 'stack '()))

;;Checks if a stack is empty
(define (empty_stack S)
        (cond 
        ((and (pair? S) (equal? (car S) 'stack) (equal? (cdr S) '())) #t)
        (#t         #f)
        )
)

;;returns the top element of the stack
;;(define (top S)
 ;;       (and (not empty_stack S) (Stack? S)) (cons (cdr S))
;;)

;;Checks if something is a stack
(define (Stack? S)
        (and (pair? S) (equal? (car S) 'stack))  #t
)

;;makes an empty stack
(define make_stack (cons 'stack '()))

(define (top S) (car (cdr S)))

;;Pushes an element to the stack
(define (push S x)
        (set-cdr! S (cons x (cdr S)))
)

;;Pops an element from a stack
(define (pop S)
        (set-cdr! S (cdr (cdr S)))
)

;;stack for testing
(define tStack '(stack 1 2 3))