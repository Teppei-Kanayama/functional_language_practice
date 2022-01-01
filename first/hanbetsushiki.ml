(* 目的：a, b, cが与えられたら判別式を返す*)
let hanbetsushiki a b c = b *. b -. 4.0 *. a *. c

let test1 = hanbetsushiki 1. 0. 0. = -0.0
let test2 = hanbetsushiki 1. 1. 1. = -3.0

(* 目的：a, b, cを与えられたら解の個数を返す *)
let kai_no_kosuu a b c =
  if hanbetsushiki a b c > 0.0 then 2
  else if hanbetsushiki a b c = 0.0 then 1
  else 0

let test3 = kai_no_kosuu 1. 1. 1. = 0
let test4 = kai_no_kosuu 1. 2. 1. = 1
let test5 = kai_no_kosuu 1. 3. 1. = 2
