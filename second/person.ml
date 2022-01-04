type person_t = {
  name: string;
  height: float;
  weight: float;
  birth_day: int * int;
  blood_type: string;
}

let person1 = {
  name="河野太郎";
  height=171.2;
  weight=63.3;
  birth_day=(1, 3);
  blood_type="A";
}

let person2 = {
  name="河野二郎";
  height=171.2;
  weight=63.3;
  birth_day=(1, 3);
  blood_type="B";
}

let person3 = {
  name="河野三郎";
  height=171.2;
  weight=63.3;
  birth_day=(1, 3);
  blood_type="A";
}

let ketsueki_hyoji person = match person with 
  {name = name; height = height; weight = weight; birth_day = birth_day; blood_type = blood_type} 
    -> name ^ "さんの血液型は" ^ blood_type ^ "型です"

let test1 = ketsueki_hyoji person1 = "河野太郎さんの血液型はA型です"

let rec count_ketsueki_A lst = match lst with
  [] -> 0
  | {blood_type = blood_type} :: rest -> if blood_type = "A" then 1 + count_ketsueki_A rest
                                                             else count_ketsueki_A rest

let test = count_ketsueki_A [] = 0
let test = count_ketsueki_A [person1] = 1
let test = count_ketsueki_A [person2] = 0
let test = count_ketsueki_A [person1; person2] = 1
let test = count_ketsueki_A [person1; person2; person3] = 2

let rec person_insert lst person = match lst with
  [] -> [person]
  | {name = name_in_list; height = height; weight = weight; birth_day = birth_day; blood_type = blood_type} as first :: rest -> (match person with 
                                        {name = name_in_argument}
                                        -> if name_in_argument <= name_in_list then person :: lst
                                                                               else first :: (person_insert rest person))

let test = person_insert [] person1 = [person1]
let test = person_insert [person3; person2] person1 = [person3; person2; person1]
let test = person_insert [person3; person1] person2 = [person3; person2; person1]

let rec person_sort lst = match lst with
  [] -> []
  | first :: rest -> person_insert (person_sort rest) first

let test = person_sort [] = []
let test = person_sort [person1] = [person1]
let test = person_sort [person1; person2; person3] = [person3; person2; person1]