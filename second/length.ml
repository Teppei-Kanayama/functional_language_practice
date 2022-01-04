let rec length lst = match lst with
  [] -> 0
  | first :: rest -> 1 + length rest

let test = length [] = 0
let test = length [2; 1; 6; 4; 7] = 5


let rec even lst = match lst with
  [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest
                                        else even rest
let test = even [] = []
let test = even [2; 1; 6; 4; 7] = [2; 6; 4]
let test = even [1] = []
let test = even [0] = [0]


let rec concat lst = match lst with
  [] -> ""
  | first :: rest -> first ^ concat rest

let test = concat [] = ""
let test = concat ["春"] = "春"
let test = concat [""] = ""
let test = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
let test = concat ["春"; "夏"; ""; "冬"] = "春夏冬"