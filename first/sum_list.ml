(* 整数のリストを受け取ったら、それまでの数の合計からなるリストを返す関数 *)
(* sum_list: int list -> int list *)
(* acmはこれまでの合計 *)
let sum_list int_list =
  let rec sum_list_hojo int_list acm = match int_list with
    [] -> []
    | first :: rest ->  first + acm :: sum_list_hojo rest (acm + first)
  in sum_list_hojo int_list 0

let test = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
