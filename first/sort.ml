(* 入力：あらかじめ昇順に並んでいる整数リストと整数*)
(* 出力：昇順に並んでいる整数リスト *)
(* insert: int list -> int -> int list *)
let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest
  -> if n < first then n :: lst  (* insert rest n*)
                  else first :: insert rest n

let test1 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]

(* 入力：整数のリスト *)
(* 出力：昇順に整列したリスト *)
(* ins_sort: int list -> int list *)
let rec ins_sort lst = match lst with
  [] -> []
  | first :: rest
  -> insert (ins_sort rest) first

let test2 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
