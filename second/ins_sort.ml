let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if n <= first then n :: lst
                                   else first :: (insert rest n)

let test = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
let test = insert [] 10 = [10]
let test = insert [-2; 0] (-10) = [-10; -2; 0]

let rec ins_sort lst = match lst with
  [] -> []
  | first :: rest -> insert (ins_sort rest) first

let test = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test = ins_sort [] = []
let test = ins_sort [1] = [1]
let test = ins_sort [-1; -2; -3] = [-3; -2; -1]
let test = ins_sort [1; 2; 3] = [1; 2; 3]