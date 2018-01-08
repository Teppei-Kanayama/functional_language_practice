(* 文字列のリストを受け取ったら、その中の要素を全部くっつける *)
(* concat: string list -> string *)

(*
let rec concat str_lst = match str_lst with
  [] -> ""
  | first :: rest -> first ^ concat rest
*)

(*
let concat_word word1 word2 = word1 ^ word2

let concat str_lst =
  List.fold_right concat_word str_lst ""
*)

let concat str_lst =
  List.fold_right (^) str_lst ""

let test = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
