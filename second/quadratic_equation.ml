let hanbetsushiki a b c = b ** 2. -. 4. *. a *. c

let kai_no_kosuu a b c = if hanbetsushiki a b c > 0. then 2 
                                                    else if hanbetsushiki a b c = 0. then 1
                                                    else 0

let kyosuukai a b c = kai_no_kosuu a b c = 0

let test1 = hanbetsushiki 1. 0. 0. = 0.
let test2 = hanbetsushiki 2. 3. 4. = -23.

let test3 = kai_no_kosuu 1. 0. 0. = 1
let test4 = kai_no_kosuu 1. (-2.) 0. = 2
let test5 = kai_no_kosuu 1. (-2.) 2. = 0

let test6 = kyosuukai 1. 0. 0. = false
let test7 = kyosuukai 1. (-2.) 0. = false
let test8 = kyosuukai 1. (-2.) 2. = true