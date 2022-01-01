let taisho_x pos = match pos with
  (x, y) -> (x, -. y)

let test0 = taisho_x (0., 0.) = (0., 0.)
let test1 = taisho_x (1.5, 0.) = (1.5, 0.)
let test2 = taisho_x (2., 2.) = (2., -2.)
