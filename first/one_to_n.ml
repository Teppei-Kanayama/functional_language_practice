(* 1から受け取った自然数までの合計を求める *)
(* one_to_n: int -> int *)
let rec enumerate n =
  if n = 0 then []
           else n :: enumerate (n - 1)

let one_to_n last =
  List.fold_right (+) (enumerate last) 0

let test = one_to_n 5 = 15

let fac target =
  List.fold_right ( * ) (enumerate target) 1

let test = fac 5 = 120
