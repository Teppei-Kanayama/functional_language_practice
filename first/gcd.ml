(* ふたつの自然数を受け取ったら、その最大公約数を返す *)
(* gcd: int -> int -> int *)

let rec gcd m n =
  if n = 0
  then m
  else gcd n (m mod n)

let test = gcd 28 7 = 7
let test = gcd 9 24 = 3
