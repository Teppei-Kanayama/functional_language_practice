(* 'a -> 'a *)
let func1 a = a

(* 'a -> 'b -> 'a *)
let func2 a b = a

(* 'a -> 'b -> 'b *)
let func3 a b = b

(* 'a -> ('a -> 'b) -> 'b *)
let func4 a f = f a

(* ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
let func5 f g a = g (f a)
