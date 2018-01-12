
(* fold_right: ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 関数fと初期値init、リストlstを受け取ったら、initからはじめてリストlstの要素を左から順にfを施しこむ関数 *)
(* fold_left: ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a *)
(* initがアキュムレータとしての役割を果たす *)
let rec fold_left f init lst = match lst with
 [] -> init
 | first :: rest -> fold_left f (f init first) rest



let test = fold_right (+) [1; 3] 5 (* 9 *)
let test = fold_right (^) ["e"; "p"; "p"; "e"; "i"] "t" (* "eppeit" *)

(* (+) ((+) 5 1) 3 *)
let test = fold_left (+) 5 [1; 3] (* 9 *)
let test = fold_left (^) "t" ["e"; "p"; "p"; "e"; "i"] (* "teppei" *)
