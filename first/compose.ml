let compose f g =
  let h x = f (g x) in
    h

let time2 x = x * 2

let add3 x = x + 3

let ans = (compose time2 add3) 4
