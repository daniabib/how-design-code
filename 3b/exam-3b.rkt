;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exam-3b) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;;===================
;; Constants:
(define WIDTH  400)
(define HEIGHT 200)

(define CENTER (circle 15 "solid" "lightyellow"))
(define PETAL (ellipse 30 50 "solid" "purple"))
(define FLOWER
  (overlay (above CENTER(rectangle 1 10 0 "white"))
           (overlay/align "center" "top" (above (beside (rotate 216 PETAL) (rectangle 1 1 0 "white") (rotate 144 PETAL))
                                                (rotate 180 (beside (rotate 72 PETAL)(rectangle 10 0 0 "white")(rotate 288 PETAL))))
                          (above (rectangle 1 61 0 "white")))))

(define MTS (empty-scene WIDTH HEIGHT))

;;===================
;; Data definitions

(define-struct flower (x y size))
;; Flower is (make-flower Integer Integer Natural)
;; interp. position and the size of flower on screen
(define F1 (make-flower 0 0 0))
(define F2 (make-flower 10 23 10))

(define (fn-for-flower f)
  (... (flower-x f)
       (flower-y f)
       (flower-size f)))

;; TEMPLATE RULES USED:
;;  - Compound data: 3 fields

;;==================
;; Functions:

;; Flower -> Flower
;; called to make the flower grow where mouse clicks; start with (main (make-flower (/ WIDTH 2) (/ HEIGHT 2) 0))
;; no tests for main function
#;
(define (main f)
  (big-bang f
            (on-tick   next-flower)
            (to-draw        render)
            (on-mouse handle-mouse)))

;; Flower -> Flower
;; add 1 to the size of the flower every tick
;; !!!
(define (next-flower f) 0)

;; Flower -> Image
;; render FLOWER on MTS
;; !!!
(define (render f) 0)
