(* 2以上の自然数を受け取ったら、2以上n以下の素数のリストを返す関数 *)
(* seive: int list -> int list *)
let rec sieve natural_list =
  match natural_list with
    [] -> []
    | first :: rest ->
      let filtered_list = List.filter ((fun n m -> m mod n != 0) first) rest in
        first :: (sieve filtered_list)

let test1 = sieve [2] = [2]
let test2 = sieve [2; 3; 4; 5; 6; 7] = [2; 3; 5; 7]

let prime n =
  let rec enumerate start_num end_num =
    if start_num = end_num
    then [start_num]
    else start_num :: enumerate (start_num + 1) end_num in
      sieve (enumerate 2 n)

let test3 = prime 7 = [2; 3; 5; 7]
