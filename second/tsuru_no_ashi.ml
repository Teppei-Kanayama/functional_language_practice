let tsuru_no_ashi n = n * 2

let tsuru_kame_no_ashi n_tsuru n_kame = n_tsuru * 2 + n_kame * 4

let tsuru_kame n_tsuru_kame n_ashi = 2 * n_tsuru_kame - n_ashi / 2

let test1 = tsuru_no_ashi 0 = 0
let test2 = tsuru_no_ashi 1 = 2
let test3 = tsuru_no_ashi 10 = 20

let test4 = tsuru_kame_no_ashi 0 0 = 0
let test5 = tsuru_kame_no_ashi 1 1 = 6
let test6 = tsuru_kame_no_ashi 3 4 = 22

let test7 = tsuru_kame 0 0 = 0
let test8 = tsuru_kame 2 6 = 1
let test9 = tsuru_kame 7 22 = 3

