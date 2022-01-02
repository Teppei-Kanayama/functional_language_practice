let jikan time = if time < 12 then "午前" else "午後"

let test1 = jikan 0 = "午前"
let test2 = jikan 10 = "午前"
let test3 = jikan 12 = "午後"
let test4 = jikan 20 = "午後"