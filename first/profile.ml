type person_t = {
  height : float;
  weight : float;
  birth_month : int;
  birth_day : int;
  blood_type : string;
}

let data1 = {height = 160.; weight = 50.; birth_month = 5; birth_day = 30; blood_type = "A"}
let data2 = {height = 152.; weight = 48.; birth_month = 9; birth_day = 29; blood_type = "A"}
let data3 = {height = 171.; weight = 59.; birth_month = 6; birth_day = 15; blood_type = "AB"}

let lst1 = []
let lst2 = [data1]
let lst3 = [data1; data2]
let lst4 = [data1; data2; data3]

(* 目的：person_t型のデータのリストを受け取ったら、血液型がA型の人の数を返す *)
(* count_ketsueki_A: person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
  [] -> 0
  | {height = h; weight = w; birth_month = bm; birth_day = bd; blood_type = bt} :: rest
    -> if bt = "A" then count_ketsueki_A rest + 1
                   else count_ketsueki_A rest

let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 1
let test3 = count_ketsueki_A lst3 = 2
let test4 = count_ketsueki_A lst4 = 2
