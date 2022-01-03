type person_t = {
  name: string;
  height: float;
  weight: float;
  birth_day: int * int;
  blood_type: string;
}

let ketsueki_hyoji person = match person with 
  {name = name; height = height; weight = weight; birth_day = birth_day; blood_type = blood_type} 
    -> name ^ "さんの血液型は" ^ blood_type ^ "型です"

let test1 = ketsueki_hyoji {
  name="河野太郎";
  height=171.2;
  weight=63.3;
  birth_day=(1, 3);
  blood_type="A";
} = "河野太郎さんの血液型はA型です"
