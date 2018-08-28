#lang racket/base

(require 2htdp/image)

(define BLOCK-SIZE 22)

(define (block color)
  (overlay (square (- BLOCK-SIZE 2) 'solid color)
           (square BLOCK-SIZE 'solid "white")))

(define CYAN-BLOCK (block "light blue"))
(define BLUE-BLOCK (block "cornflowerblue"))
(define VIOLET-BLOCK (block "violet"))
(define GOLD-BLOCK (block "goldenrod"))
(define GREEN-BLOCK (block "darkseagreen"))
(define PURPLE-BLOCK (block "purple"))
(define PINK-BLOCK (block "pink"))

;; Board : 10 wide, 20 high


;; Tetrominos:
;; I :  XXXX  (cyan)
;;
(beside CYAN-BLOCK CYAN-BLOCK CYAN-BLOCK CYAN-BLOCK)

;; J : JJJ    (blue)
;;       J
;;
(above/align "right"
             (beside BLUE-BLOCK BLUE-BLOCK BLUE-BLOCK)
             BLUE-BLOCK)


;; L : LLL    (orange)
;;     L
;;
(above/align "left"
             (beside VIOLET-BLOCK VIOLET-BLOCK VIOLET-BLOCK)
             VIOLET-BLOCK)

;; O : OO     (yellow)
;;     OO
;;
(above (beside GOLD-BLOCK GOLD-BLOCK)
       (beside GOLD-BLOCK GOLD-BLOCK))

;; S :  SS    (green)
;;     SS
;;
(beside/align "top"
 (beside/align "bottom"
               GREEN-BLOCK
               (above GREEN-BLOCK
                      GREEN-BLOCK))
 GREEN-BLOCK)

;; T : TTT    (purple)
;;      T
;;
(above (beside PURPLE-BLOCK PURPLE-BLOCK PURPLE-BLOCK)
       PURPLE-BLOCK)

;; Z : ZZ     (red)
;;      ZZ
(beside/align "bottom"
 (beside/align "top"
               PINK-BLOCK
               (above PINK-BLOCK
                      PINK-BLOCK))
 PINK-BLOCK)

