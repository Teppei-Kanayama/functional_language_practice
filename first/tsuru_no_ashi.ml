(* 目的: 鶴の数tsuruを与えられたら、足の本数を返す。*)
let tsuru_no_ashi tsuru = tsuru * 2

(* テスト *)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 2 = 4
let test3 = tsuru_no_ashi 10 = 20

let kame_no_ashi kame = kame * 4

let tsurukame_no_ashi tsuru kame = tsuru * 2 + kame * 4

(* 目的: 全体の足の本数と引数が与えられたら、鶴の数を返す。 *)
let tsurukame ashi hiki = hiki * 2 - ashi / 2

let test4 = tsurukame 6 2 = 1
let test5 = tsurukame 4 1 = 0
